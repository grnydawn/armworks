    !KGEN-generated Fortran source file 
      
    !Generated at : 2018-08-07 15:55:26 
    !KGEN version : 0.7.3 
      
    PROGRAM kernel_driver 
        USE kgen_utils_mod, ONLY: kgen_get_newunit, kgen_error_stop, kgen_dp, kgen_array_sumcheck, kgen_rankthreadinvoke 
        USE tprof_mod, ONLY: tstart, tstop, tnull, tprnt 
        USE micro_mg_cam, ONLY: micro_mg_cam_tend_pack 
        USE shr_kind_mod, ONLY: rkind_comp,rkind_io
          
        USE micro_mg_cam, ONLY: kr_externs_in_micro_mg_cam 
        USE micro_mg2_0, ONLY: kr_externs_in_micro_mg2_0 
        USE micro_mg_utils, ONLY: kr_externs_in_micro_mg_utils 
        USE wv_sat_methods, ONLY: kr_externs_in_wv_sat_methods 
        IMPLICIT NONE 
          
        LOGICAL :: kgen_isverified 
        INTEGER :: kgen_ierr_list, kgen_unit_list 
        INTEGER :: kgen_ierr, kgen_unit, kgen_case_count, kgen_count_verified 
        CHARACTER(LEN=1024) :: kgen_filepath 
        REAL(KIND=kgen_dp) :: kgen_measure, kgen_total_time, kgen_min_time, kgen_max_time 
        REAL(KIND=8) :: kgen_array_sum 
        INTEGER :: kgen_mpirank, kgen_openmptid, kgen_kernelinvoke 
        LOGICAL :: kgen_evalstage, kgen_warmupstage, kgen_mainstage 
        COMMON / state / kgen_mpirank, kgen_openmptid, kgen_kernelinvoke, kgen_evalstage, kgen_warmupstage, kgen_mainstage 
          
        REAL(KIND=rkind_comp) :: dtime 
        REAL(KIND=rkind_io)   :: dtime_io
        INTEGER :: nlev 
        INTEGER :: mgncol 
        kgen_total_time = 0.0_kgen_dp 
        kgen_min_time = HUGE(0.0_kgen_dp) 
        kgen_max_time = 0.0_kgen_dp 
        kgen_case_count = 0 
        kgen_count_verified = 0 
          
        kgen_unit_list = kgen_get_newunit() 
        !OPEN (UNIT=kgen_unit_list, FILE="../data/pcols" // PCOLSSIZE // "/kgen_statefile.lst", STATUS="OLD", IOSTAT=kgen_ierr_list) 
        OPEN (UNIT=kgen_unit_list, FILE=STATEFILE, STATUS="OLD", IOSTAT=kgen_ierr_list) 
        IF (kgen_ierr_list .NE. 0) THEN 
!            CALL SYSTEM("ls -1 micro_mg_tend2_0.*.*.* > kgen_statefile.lst") 
!            CALL SLEEP(1) 
            kgen_unit_list = kgen_get_newunit() 
            OPEN (UNIT=kgen_unit_list, FILE="kgen_statefile.lst", STATUS="OLD", IOSTAT=kgen_ierr_list) 
        END IF   
        IF (kgen_ierr_list .NE. 0) THEN 
            WRITE (*, *) "" 
            WRITE (*, *) "ERROR: ""kgen_statefile.lst"" is not found in current directory." 
            STOP 
        END IF   
        DO WHILE ( kgen_ierr_list .EQ. 0 ) 
            READ (UNIT = kgen_unit_list, FMT="(A)", IOSTAT=kgen_ierr_list) kgen_filepath 
            IF (kgen_ierr_list .EQ. 0) THEN 
                kgen_unit = kgen_get_newunit() 
                CALL kgen_rankthreadinvoke(TRIM(ADJUSTL(kgen_filepath)), kgen_mpirank, kgen_openmptid, kgen_kernelinvoke) 
                OPEN (UNIT=kgen_unit, FILE=TRIM(ADJUSTL(kgen_filepath)), STATUS="OLD", ACCESS="STREAM", FORM="UNFORMATTED", &
                &ACTION="READ", CONVERT="BIG_ENDIAN", IOSTAT=kgen_ierr) 
                IF (kgen_ierr == 0) THEN 
                    WRITE (*, *) "" 
                    WRITE (*, *) "***************** Verification against '" // trim(adjustl(kgen_filepath)) // "' &
                    &*****************" 
                    kgen_evalstage = .TRUE. 
                    kgen_warmupstage = .FALSE. 
                    kgen_mainstage = .FALSE. 
                      
                      
                    !driver read in arguments 
                    READ (UNIT = kgen_unit) dtime_io; dtime=real(dtime_io,kind=rkind_comp) 
                    READ (UNIT = kgen_unit) nlev 
                    READ (UNIT = kgen_unit) mgncol 
                      
                    !extern input variables 
                    CALL kr_externs_in_micro_mg_cam(kgen_unit) 
                    CALL kr_externs_in_micro_mg2_0(kgen_unit) 
                    CALL kr_externs_in_micro_mg_utils(kgen_unit) 
                    CALL kr_externs_in_wv_sat_methods(kgen_unit) 
                      
                    !callsite part 
                    ! print *,'just before call to micro_mg_cam_tend_pack'
                    CALL micro_mg_cam_tend_pack(kgen_unit, kgen_measure, kgen_isverified, dtime, nlev, mgncol) 
                    ! print *,'just after the call to micro_mg_cam_tend_pack'
                    REWIND (UNIT=kgen_unit) 
                    kgen_evalstage = .FALSE. 
                    kgen_warmupstage = .TRUE. 
                    kgen_mainstage = .FALSE. 
                      
                      
                    !driver read in arguments 
                    READ (UNIT = kgen_unit) dtime_io;dtime=real(dtime_io,kind=rkind_comp) 
                    ! print *,'dtime_io: ',dtime_io
                    READ (UNIT = kgen_unit) nlev 
                    READ (UNIT = kgen_unit) mgncol 
                      
                    !extern input variables 
                    CALL kr_externs_in_micro_mg_cam(kgen_unit) 
                    CALL kr_externs_in_micro_mg2_0(kgen_unit) 
                    ! print *,'after second call to kr_externs_in_micro_mg2_0'
                    CALL kr_externs_in_micro_mg_utils(kgen_unit) 
                    CALL kr_externs_in_wv_sat_methods(kgen_unit) 
                      
                    !callsite part 
                    CALL micro_mg_cam_tend_pack(kgen_unit, kgen_measure, kgen_isverified, dtime, nlev, mgncol) 
                    REWIND (UNIT=kgen_unit) 
                    kgen_evalstage = .FALSE. 
                    kgen_warmupstage = .FALSE. 
                    kgen_mainstage = .TRUE. 
                    kgen_case_count = kgen_case_count + 1 
                    kgen_isverified = .FALSE. 
                      
                      
                    !driver read in arguments 
                    READ (UNIT = kgen_unit) dtime_io;dtime=real(dtime_io,kind=rkind_comp)
                    READ (UNIT = kgen_unit) nlev 
                    READ (UNIT = kgen_unit) mgncol 
                      
                    !extern input variables 
                    CALL kr_externs_in_micro_mg_cam(kgen_unit) 
                    !stop 'after call to kr_externs_in_micro_mg_cam'
                    CALL kr_externs_in_micro_mg2_0(kgen_unit) 
                    !stop 'after call to kr_externs_in_micro_mg2_0'
                    CALL kr_externs_in_micro_mg_utils(kgen_unit) 
                    !stop 'after call to kr_externs_in_micro_mg_utils'
                    CALL kr_externs_in_wv_sat_methods(kgen_unit) 
                    !stop 'after call to kr_externs_in_wv_sat_methods'
                      
                    !callsite part 
                    CALL micro_mg_cam_tend_pack(kgen_unit, kgen_measure, kgen_isverified, dtime, nlev, mgncol) 
                    kgen_total_time = kgen_total_time + kgen_measure 
                    kgen_min_time = MIN( kgen_min_time, kgen_measure ) 
                    kgen_max_time = MAX( kgen_max_time, kgen_measure ) 
                    IF (kgen_isverified) THEN 
                        kgen_count_verified = kgen_count_verified + 1 
                    END IF   
                END IF   
                CLOSE (UNIT=kgen_unit) 
            END IF   
        END DO   
          
        CLOSE (UNIT=kgen_unit_list) 
          
        WRITE (*, *) "" 
        WRITE (*, "(A)") "****************************************************" 
        WRITE (*, "(4X,A)") "kernel execution summary: micro_mg_tend2_0" 
        WRITE (*, "(A)") "****************************************************" 
        IF (kgen_case_count == 0) THEN 
            WRITE (*, *) "No data file is verified." 
        ELSE 
            WRITE (*, "(4X, A36, A1, I6)") "Total number of verification cases   ", ":", kgen_case_count 
            WRITE (*, "(4X, A36, A1, I6)") "Number of verification-passed cases ", ":", kgen_count_verified 
            WRITE (*, *) "" 
            WRITE (*, "(4X, A, E12.4)") "Average call time (usec): ", kgen_total_time / DBLE(kgen_case_count) 
            WRITE (*, "(4X, A, E12.4)") "Minimum call time (usec): ", kgen_min_time 
            WRITE (*, "(4X, A, E12.4)") "Maximum call time (usec): ", kgen_max_time 
        END IF   
        WRITE (*, "(A)") "****************************************************" 
    END PROGRAM   
    BLOCK DATA KGEN 
        INTEGER :: kgen_mpirank = 0, kgen_openmptid = 0, kgen_kernelinvoke = 0 
        LOGICAL :: kgen_evalstage = .TRUE., kgen_warmupstage = .FALSE., kgen_mainstage = .FALSE. 
        COMMON / state / kgen_mpirank, kgen_openmptid, kgen_kernelinvoke, kgen_evalstage, kgen_warmupstage, kgen_mainstage 
    END BLOCK DATA KGEN 
