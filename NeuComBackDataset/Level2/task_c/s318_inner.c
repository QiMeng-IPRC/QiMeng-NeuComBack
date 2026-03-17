extern __attribute__((aligned(64))) float flat_2d_array[256*256];
extern __attribute__((aligned(64))) float x[32000];
extern __attribute__((aligned(64))) float a[32000],b[32000],c[32000],d[32000],e[32000],
                                   aa[256][256],bb[256][256],cc[256][256],tt[256][256];
extern __attribute__((aligned(64))) int indx[32000];
extern float* __restrict__ xx;
extern float* yy;
extern int dummy(float[32000], float[32000], float[32000], float[32000], float[32000], float[256][256], float[256][256], float[256][256], float);
extern float fabsf(float);
float s318_inner(int inc){
    int k, index;
    float max, chksum;
    for (int nl = 0; nl < (100000)/2; nl++) {
        k = 0;
        index = 0;
        max = fabsf(a[0]);
        k += inc;
        for (int i = 1; i < (32000); i++) {
            if (fabsf(a[k]) <= max) {
                goto L5;
            }
            index = i;
            max = fabsf(a[k]);
L5:
            k += inc;
        }
        chksum = max + (float) index;
        dummy(a, b, c, d, e, aa, bb, cc, chksum);
    }
    return max + index + 1;
}