#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <sys/time.h>
#include "common.h"
#include "array_defs.h"
__attribute__((aligned(64))) float flat_2d_array[256*256];
__attribute__((aligned(64))) float x[32000];
__attribute__((aligned(64))) float a[32000],b[32000],c[32000],d[32000],e[32000],
                                   aa[256][256],bb[256][256],cc[256][256],tt[256][256];
__attribute__((aligned(64))) int indx[32000];
float* __restrict__ xx;
float* yy;
int loop_count;
void s151s(float a[32000], float b[32000],  int m)
{
    for (int i = 0; i < 32000-1; i++) {
        a[i] = a[i + m] + b[i];
    }
}
void s152s(float a[32000], float b[32000], float c[32000], int i)
{
    a[i] += b[i] * c[i];
}
float test(float* A){
  float s = (float)0.0;
  for (int i = 0; i < 4; i++)
    s += A[i];
  return s;
}
int s471s(void)
{
    return 0;
}
float f(float a, float b){
    return a*b;
}
typedef float(*test_function_t)(struct args_t *);
void time_function(test_function_t vector_func, void * arg_info)
{
    struct args_t func_args = {.arg_info=arg_info};
    double result = vector_func(&func_args);
    double tic=func_args.t1.tv_sec+(func_args.t1.tv_usec/1000000.0);
    double toc=func_args.t2.tv_sec+(func_args.t2.tv_usec/1000000.0);
    double taken = toc-tic;
    printf("%10.3f\t%f\t%d\n", taken, result, loop_count);
}
extern void s127_inner();
float s127(struct args_t * func_args)
{

//    induction variable recognition
//    induction variable with multiple increments

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);
s127_inner();

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}extern int loop_count;
int main(int argc, char ** argv){
    int n1 = 1;
    int n3 = 1;
    int* ip;
    loop_count = 0;
    float s1,s2;
    init(&ip, &s1, &s2);
    time_function(&s127, NULL);;
    return EXIT_SUCCESS;
}
