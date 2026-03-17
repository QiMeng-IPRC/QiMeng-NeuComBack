extern __attribute__((aligned(64))) float flat_2d_array[256*256];
extern __attribute__((aligned(64))) float x[32000];
extern __attribute__((aligned(64))) float a[32000],b[32000],c[32000],d[32000],e[32000],
                                   aa[256][256],bb[256][256],cc[256][256],tt[256][256];
extern __attribute__((aligned(64))) int indx[32000];
extern float* __restrict__ xx;
extern float* yy;
extern int dummy(float[32000], float[32000], float[32000], float[32000], float[32000], float[256][256], float[256][256], float[256][256], float);
extern void s151s(float a[32000], float b[32000],  int m);
 void s151_inner(){
    for (int nl = 0; nl < 5*(100000); nl++) {
        s151s(a, b,  1);
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }
}