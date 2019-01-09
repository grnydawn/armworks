#define N 42
int a[N], b[N], c[N];

int main(void) {
  for(int i=0; i<N; ++i){
    a[i] = b[i] + b[c[i]];
  }
}

