extern __attribute__((aligned(64))) float flat_2d_array[256*256];
extern __attribute__((aligned(64))) float x[32000];
extern __attribute__((aligned(64))) float a[32000],b[32000],c[32000],d[32000],e[32000],
                                   aa[256][256],bb[256][256],cc[256][256],tt[256][256];
extern __attribute__((aligned(64))) int indx[32000];
extern float* __restrict__ xx;
extern float* yy;
extern int dummy(float[32000], float[32000], float[32000], float[32000], float[32000], float[256][256], float[256][256], float[256][256], float);
void s2710_inner(int x){
    for (int nl = 0; nl < (100000)/2; nl++) {
        for (int i = 0; i < (32000); i++) {
            if (a[i] > b[i]) {
                a[i] += b[i] * d[i];
                if ((32000) > 10) {
                    c[i] += d[i] * d[i];
                } else {
                    c[i] = d[i] * e[i] + (float)1.;
                }
            } else {
                b[i] = a[i] + e[i] * e[i];
                if (x > (float)0.) {
                    c[i] = a[i] + d[i] * d[i];
                } else {
                    c[i] += e[i] * e[i];
                }
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }
}