extern __attribute__((aligned(64))) float flat_2d_array[256*256];
extern __attribute__((aligned(64))) float x[32000];
extern __attribute__((aligned(64))) float a[32000],b[32000],c[32000],d[32000],e[32000],
                                   aa[256][256],bb[256][256],cc[256][256],tt[256][256];
extern __attribute__((aligned(64))) int indx[32000];
extern float* __restrict__ xx;
extern float* yy;
extern int dummy(float[32000], float[32000], float[32000], float[32000], float[32000], float[256][256], float[256][256], float[256][256], float);
void s2111_inner(){
    for (int nl = 0; nl < 100*((100000)/((256))); nl++) {
        for (int j = 1; j < (256); j++) {
            for (int i = 1; i < (256); i++) {
                aa[j][i] = (aa[j][i-1] + aa[j-1][i])/1.9;
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }
}