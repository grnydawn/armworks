
fc@text    = armflang
#sveopts@py = {{"sve": "-march=armv8-a+sve", "nosve": ""}}
sveopts@py = {{"nosve": ""}}
vecopts@py = {{"vec": "-fvectorize", "novec": "-fno-vectorize"}}
results@py = {{}}
parsed@py = {{}}
plotdata@py = {{}}
xlabels@py = []

[import*]
pickle
os
numpy

[if not os.path.isfile("data.pickle")]
	[for svename, sveopt in sveopts.items()]
		rm_maind_obj@sh = rm -f maind.o
		maind_obj@sh = {fc} -O0 -c {sveopt} maind.f
		sveresults@py = {{}}
		dummy@py = results.update({svename}=sveresults)
		[for vecname, vecopt in vecopts.items()]
			rm_loopd_obj@sh = rm -f loopd.o
			loopd_obj@sh = {fc} -O3 -c {sveopt} {vecopt} -o loopd.o loopd.f
			rm_vecd_exe@sh = rm -f vecd.exe
			vecd_exe@sh = {fc} -O3 {sveopt} {vecopt} loopd.o maind.o -o vecd.exe 
			run_vecd_exe@sh = ./vecd.exe
			dummy2@py = sveresults.update({vecname}=run_vecd_exe[1])
		[end]
	[end]

	[parse]

		[for svename, sveresult in results.items()]
			sveparsed@py = {{}}
			dummy@py = parsed.update({svename}=sveparsed)
			[for vecname, vecresult in sveresult.items()]
				vecparsed@py = {{ "10": {{}}, "100": {{}}, "1000": {{}} }}
				dummy@py = sveparsed.update({vecname}=vecparsed)
				[for line in vecresult.split("\n")]
					sline@py = line.split()
					[if len(sline)==6 and sline[0][0] in ("s", "v") and sline[1] in ("10", "100", "1000") and sline[-1].isdigit()]
						data@py = {{sline[0] : map(lambda x: float(x.replace("D", "E")), sline[2:5])}}
						dummy@py = vecparsed[sline[1]].update(data)
					[end]
				[end]
			[end]
		[end]

	[save]
		fwrite@py = open("data.pickle", "wb")
		_@py = pickle.dump(parsed, fwrite)
		_@py = fwrite.close()
[end]

[load]
	fread@py = open("data.pickle", "rb")
	parsed@py = pickle.load(fread)
	_@py = fread.close()

[plot]
	[for svename in ("nosve",)]
	#[for svename in ("sve", "nosve")]
		sveparsed@py = parsed[svename]
		[for vecname in ("vec", "novec")]
			vecparsed@py = sveparsed[vecname]
			[for vlen in ("10", "100", "1000")]
				veclen@py = vecparsed[vlen]
				xlabels@py = numpy.asarray(sorted(veclen))
				data@py = []
				[for testname in xlabels]
					_@py = data.append(veclen[testname][0])
				[end]
				[append]
					data@py = numpy.asarray(data)
					_@py = plotdata.update( {{svename+vecname+vlen: data}} )

			[end]
		[end]
	[end]

	[combined@False]
		nloops@py = len(xlabels)
		x@py = numpy.arange(nloops)
		w@py = 0.1
		s@py = 0.0
		fontsize@py = 18
		labels@py = [('nosvenovec10','novec10','red'), ('nosvevec10','vec10','pink'), ('nosvenovec100','novec100','blue'),
				('nosvevec100','vec100','lightblue'), ('nosvenovec1000','novec1000','green'), ('nosvevec1000','vec1000','lightgreen')]
		mpl = plotmpl.py --pdf "'vectest_arm.pdf'" --no-show
			-t "'ARM HPC Compiler Version 19.0 VECTORIZATION TEST RESULT on Cortex-A72 of Cavium(Amazon EC2)\nTEST SUITE FOR VECTORIZING COMPILERS Version 3.0', fontsize=fontsize"
			--pyplot "'ALL RESULTS COMBINED ( NUMBER OF THE LOOPS = {}', y=0.85, fontsize=fontsize@suptitle"
			--legend "labels=tuple(l for p,l,c in labels), fontsize=fontsize"
			-f "figsize=[27, 9]"
			-x "xlabels, rotation=90@ticklabels"
			-x "x@ticks"
			-x "'LOOP', fontsize=fontsize@label"
			-y "'TIME TO RUN THE LOOP(SECONDS)', fontsize=fontsize@label"
			-p "x-3*w+s, plotdata[labels[0][0]], w, color=labels[0][2]@bar"
			-p "x-2*w+s, plotdata[labels[1][0]], w, color=labels[1][2]@bar"
			-p "x-w+s, plotdata[labels[2][0]], w, color=labels[2][2]@bar"
			-p "x+s, plotdata[labels[3][0]], w, color=labels[3][2]@bar"
			-p "x+w+s, plotdata[labels[4][0]], w, color=labels[4][2]@bar"
			-p "x+2*w+s, plotdata[labels[5][0]], w, color=labels[5][2]@bar"

	[sorted]
		[for vlen, vcolor1, vcolor2 in (("10","red","pink"), ("100","blue","lightblue"), ("1000","green","lightgreen"))]
		#[for vlen, vcolor1, vcolor2 in (("10","red","pink"), )]
			nloops@py = len(xlabels)
			x@py = numpy.arange(len(xlabels))
			w@py = 0.3
			s@py = 0.0
			fontsize@py = 18
			labels@py = [('nosvenovec{vlen}','novec{vlen}','{vcolor1}'), ('nosvevec{vlen}','vec{vlen}','{vcolor2}')]
			#diffarr@py = (plotdata[labels[1][0]] - plotdata[labels[0][0]])/plotdata[labels[0][0]]
			diffarr@py = (plotdata[labels[0][0]] - plotdata[labels[1][0]])/plotdata[labels[0][0]]
			idxarr@py = numpy.argsort(diffarr)
			sorteddiffarr@py = diffarr[idxarr]
			speeddown@py = numpy.argmax(sorteddiffarr > -0.05)
			speedup@py = numpy.argmax(sorteddiffarr > 0.05)
			sortedxlabels@py = xlabels[idxarr]
			sortednovec@py = plotdata[labels[0][0]][idxarr]
			sortedvec@py = plotdata[labels[1][0]][idxarr]
			nspeedup@py = nloops-speedup
			nspeeddown@py = speeddown
			nspeedsame@py = speedup - speeddown
			mpl = plotmpl.py --pdf "'vectest_arm_sorted_{vlen}.pdf'" --no-show
				-t "'ARM HPC Compiler Version 19.0 VECTORIZATION TEST RESULT on Cortex-A72 of Cavium(Amazon EC2)\nTEST SUITE FOR VECTORIZING COMPILERS Version 3.0', fontsize=fontsize"
				--pyplot "'SORTED BY SPEED-UPS (VECTOR LENGTH = {vlen})', y=0.85, fontsize=fontsize@suptitle"
				--pyplot "x=speeddown@axvline"
				--pyplot "x=speedup@axvline"
				--pyplot "speeddown/float(nloops)-0.05, 0.6, 'SPEED-DOWN ({nspeeddown} / {nloops})', fontsize=fontsize@figtext"
				--pyplot "(speedup+speeddown)/float(2*nloops)-0.05, 0.6, 'ABOUT THE SAME ({nspeedsame} / {nloops})', fontsize=fontsize@figtext"
				--pyplot "speedup/float(nloops), 0.6, 'SPEED-UP ({nspeedup} / {nloops})', fontsize=fontsize@figtext"
				--legend "labels=tuple(l for p,l,c in labels), fontsize=fontsize"
				-f "figsize=[27, 9]"
				-x "sortedxlabels, rotation=90@ticklabels"
				-x "x@ticks"
				-x "'LOOP', fontsize=fontsize@label"
				-y "'TIME TO RUN THE LOOP(SECONDS)', fontsize=fontsize@label"
				-p "x-w+s, sortednovec, w, color=labels[0][2]@bar"
				-p "x+s, sortedvec, w, color=labels[1][2]@bar"
		[end]
