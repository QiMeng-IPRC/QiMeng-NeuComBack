extern __attribute__((aligned(64))) float flat_2d_array[256*256];
extern __attribute__((aligned(64))) float x[32000];
extern __attribute__((aligned(64))) float a[32000],b[32000],c[32000],d[32000],e[32000],
                                   aa[256][256],bb[256][256],cc[256][256],tt[256][256];
extern __attribute__((aligned(64))) int indx[32000];
extern float* __restrict__ xx;
extern float* yy;
extern int dummy(float[32000], float[32000], float[32000], float[32000], float[32000], float[256][256], float[256][256], float[256][256], float);
float s315_inner(){
    for (int i = 0; i < (32000); i++)
        a[i] = (i * 7) % (32000);

    float x, chksum;
    int index;
    for (int nl = 0; nl < (100000); nl++) {
        x = a[0];
        index = 0;
        for (int i = 0; i < (32000); ++i) {
            if (a[i] > x) {
                x = a[i];
                index = i;
            }
        }
        chksum = x + (float) index;
        dummy(a, b, c, d, e, aa, bb, cc, chksum);
    }
    return index + x + 1;
}