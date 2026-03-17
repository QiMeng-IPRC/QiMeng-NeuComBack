
/*
 * This is an executable test containing a number of loops to measure
 * the performance of a compiler. Arrays' length is (32000) by default
 * and if you want a different array length, you should replace every
 * (32000) by your desired number which must be a multiple of 40. If you
 * want to increase the number of loop calls to have a longer run time
 * you have to manipulate the constant value (100000). There is a dummy
 * function called in each loop to make all computations appear required.
 * The time to execute this function is included in the time measurement
 * for the output but it is neglectable.
 *
 *  The output includes three columns:
 *    Loop:        The name of the loop
 *    Time(Sec):     The time in seconds to run the loop
 *    Checksum:    The checksum calculated when the test has run
 *
 * In this version of the codelets arrays are static type.
 *
 * All functions/loops are taken from "TEST SUITE FOR VECTORIZING COMPILERS"
 * by David Callahan, Jack Dongarra and David Levine except those whose
 * functions' name have 4 digits.
 */

#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <sys/time.h>

#include "common.h"
#include "array_defs.h"

// array definitions
__attribute__((aligned(ARRAY_ALIGNMENT))) float flat_2d_array[(256)*(256)];

__attribute__((aligned(ARRAY_ALIGNMENT))) float x[(32000)];

__attribute__((aligned(ARRAY_ALIGNMENT))) float a[(32000)],b[(32000)],c[(32000)],d[(32000)],e[(32000)],
                                   aa[(256)][(256)],bb[(256)][(256)],cc[(256)][(256)],tt[(256)][(256)];

__attribute__((aligned(ARRAY_ALIGNMENT))) int indx[(32000)];

float* __restrict__ xx;
float* yy;

float s000(struct args_t * func_args)
{

//    linear dependence testing
//    no dependence - vectorizable

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 2*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] = b[i] + 1;
        }
        dummy((float*)a, (float*)b, (float*)c, (float*)d, (float*)e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.1
float s111(struct args_t * func_args)
{

//    linear dependence testing
//    no dependence - vectorizable

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 2*(100000); nl++) {
        for (int i = 1; i < (32000); i += 2) {
            a[i] = a[i - 1] + b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1111(struct args_t * func_args)
{

//    no dependence - vectorizable
//    jump in data access

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 2*(100000); nl++) {
        for (int i = 0; i < (32000)/2; i++) {
            a[2*i] = c[i] * b[i] + d[i] * b[i] + c[i] * c[i] + d[i] * b[i] + d[i] * c[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.1

float s112(struct args_t * func_args)
{

//    linear dependence testing
//    loop reversal

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 3*(100000); nl++) {
        for (int i = (32000) - 2; i >= 0; i--) {
            a[i+1] = a[i] + b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1112(struct args_t * func_args)
{

//    linear dependence testing
//    loop reversal

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)*3; nl++) {
        for (int i = (32000) - 1; i >= 0; i--) {
            a[i] = b[i] + (float) 1.;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.1

float s113(struct args_t * func_args)
{

//    linear dependence testing
//    a(i)=a(1) but no actual dependence cycle

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 1; i < (32000); i++) {
            a[i] = a[0] + b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1113(struct args_t * func_args)
{

//    linear dependence testing
//    one iteration dependency on a((32000)/2) but still vectorizable

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 2*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] = a[(32000)/2] + b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.1

float s114(struct args_t * func_args)
{

//    linear dependence testing
//    transpose vectorization
//    Jump in data access - not vectorizable

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 200*((100000)/((256))); nl++) {
        for (int i = 0; i < (256); i++) {
            for (int j = 0; j < i; j++) {
                aa[i][j] = aa[j][i] + bb[i][j];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.1

float s115(struct args_t * func_args)
{

//    linear dependence testing
//    triangular saxpy loop

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 1000*((100000)/(256)); nl++) {
        for (int j = 0; j < (256); j++) {
            for (int i = j+1; i < (256); i++) {
                a[i] -= aa[j][i] * a[j];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1115(struct args_t * func_args)
{

//    linear dependence testing
//    triangular saxpy loop

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 100*((100000)/(256)); nl++) {
        for (int i = 0; i < (256); i++) {
            for (int j = 0; j < (256); j++) {
                aa[i][j] = aa[i][j]*cc[j][i] + bb[i][j];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.1

float s116(struct args_t * func_args)
{

//    linear dependence testing

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)*10; nl++) {
        for (int i = 0; i < (32000) - 5; i += 5) {
            a[i] = a[i + 1] * a[i];
            a[i + 1] = a[i + 2] * a[i + 1];
            a[i + 2] = a[i + 3] * a[i + 2];
            a[i + 3] = a[i + 4] * a[i + 3];
            a[i + 4] = a[i + 5] * a[i + 4];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.1

float s118(struct args_t * func_args)
{

//    linear dependence testing
//    potential dot product recursion

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 200*((100000)/(256)); nl++) {
        for (int i = 1; i < (256); i++) {
            for (int j = 0; j <= i - 1; j++) {
                a[i] += bb[j][i] * a[i-j-1];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.1

float s119(struct args_t * func_args)
{

//    linear dependence testing
//    no dependence - vectorizable

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 200*((100000)/((256))); nl++) {
        for (int i = 1; i < (256); i++) {
            for (int j = 1; j < (256); j++) {
                aa[i][j] = aa[i-1][j-1] + bb[i][j];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1119(struct args_t * func_args)
{

//    linear dependence testing
//    no dependence - vectorizable

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 200*((100000)/((256))); nl++) {
        for (int i = 1; i < (256); i++) {
            for (int j = 0; j < (256); j++) {
                aa[i][j] = aa[i-1][j] + bb[i][j];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.2

float s121(struct args_t * func_args)
{

//    induction variable recognition
//    loop with possible ambiguity because of scalar store

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int j;
    for (int nl = 0; nl < 3*(100000); nl++) {
        for (int i = 0; i < (32000)-1; i++) {
            j = i + 1;
            a[i] = a[j] + b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.2

float s122(struct args_t * func_args)
{

//    induction variable recognition
//    variable lower and upper bound, and stride
//    reverse data access and jump in data access

    struct{int a;int b;} * x = func_args->arg_info;
    int n1 = x->a;
    int n3 = x->b;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int j, k;
    for (int nl = 0; nl < (100000); nl++) {
        j = 1;
        k = 0;
        for (int i = n1-1; i < (32000); i += n3) {
            k += j;
            a[i] += b[(32000) - k];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.2

float s123(struct args_t * func_args)
{

//    induction variable recognition
//    induction variable under an if
//    not vectorizable, the condition cannot be speculated

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int j;
    for (int nl = 0; nl < (100000); nl++) {
        j = -1;
        for (int i = 0; i < ((32000)/2); i++) {
            j++;
            a[j] = b[i] + d[i] * e[i];
            if (c[i] > (float)0.) {
                j++;
                a[j] = c[i] + d[i] * e[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.2

float s124(struct args_t * func_args)
{

//    induction variable recognition
//    induction variable under both sides of if (same value)

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int j;
    for (int nl = 0; nl < (100000); nl++) {
        j = -1;
        for (int i = 0; i < (32000); i++) {
            if (b[i] > (float)0.) {
                j++;
                a[j] = b[i] + d[i] * e[i];
            } else {
                j++;
                a[j] = c[i] + d[i] * e[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.2
float s125(struct args_t * func_args)
{

//    induction variable recognition
//    induction variable in two loops; collapsing possible

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int k;
    for (int nl = 0; nl < 100*((100000)/((256))); nl++) {
        k = -1;
        for (int i = 0; i < (256); i++) {
            for (int j = 0; j < (256); j++) {
                k++;
                flat_2d_array[k] = aa[i][j] + bb[i][j] * cc[i][j];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.2
float s126(struct args_t * func_args)
{

//    induction variable recognition
//    induction variable in two loops; recurrence in inner loop

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int k;
    for (int nl = 0; nl < 10*((100000)/(256)); nl++) {
        k = 1;
        for (int i = 0; i < (256); i++) {
            for (int j = 1; j < (256); j++) {
                bb[j][i] = bb[j-1][i] + flat_2d_array[k-1] * cc[j][i];
                ++k;
            }
            ++k;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.2

float s127(struct args_t * func_args)
{

//    induction variable recognition
//    induction variable with multiple increments

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int j;
    for (int nl = 0; nl < 2*(100000); nl++) {
        j = -1;
        for (int i = 0; i < (32000)/2; i++) {
            j++;
            a[j] = b[i] + c[i] * d[i];
            j++;
            a[j] = b[i] + d[i] * e[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.2

float s128(struct args_t * func_args)
{

//    induction variables
//    coupled induction variables
//    jump in data access

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int j, k;
    for (int nl = 0; nl < 2*(100000); nl++) {
        j = -1;
        for (int i = 0; i < (32000)/2; i++) {
            k = j + 1;
            a[i] = b[k] - d[i];
            j = k + 1;
            b[k] = a[i] + c[k];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 1.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.3

float s131(struct args_t * func_args)
{
//    global data flow analysis
//    forward substitution

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int m  = 1;
    for (int nl = 0; nl < 5*(100000); nl++) {
        for (int i = 0; i < (32000) - 1; i++) {
            a[i] = a[i + m] + b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.3

float s132(struct args_t * func_args)
{
//    global data flow analysis
//    loop with multiple dimension ambiguous subscripts

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int m = 0;
    int j = m;
    int k = m+1;
    for (int nl = 0; nl < 400*(100000); nl++) {
        for (int i= 1; i < (256); i++) {
            aa[j][i] = aa[k][i-1] + b[i] * c[1];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.4

float s141(struct args_t * func_args)
{

//    nonlinear dependence testing
//    walk a row in a symmetric packed array
//    element a(i,j) for (int j>i) stored in location j*(j-1)/2+i

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int k;
    for (int nl = 0; nl < 200*((100000)/(256)); nl++) {
        for (int i = 0; i < (256); i++) {
            k = (i+1) * ((i+1) - 1) / 2 + (i+1)-1;
            for (int j = i; j < (256); j++) {
                flat_2d_array[k] += bb[j][i];
                k += j+1;
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.5

void s151s(float a[(32000)], float b[(32000)],  int m)
{
    for (int i = 0; i < (32000)-1; i++) {
        a[i] = a[i + m] + b[i];
    }
}

float s151(struct args_t * func_args)
{

//    interprocedural data flow analysis
//    passing parameter information into a subroutine

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 5*(100000); nl++) {
        s151s(a, b,  1);
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.5

void s152s(float a[(32000)], float b[(32000)], float c[(32000)], int i)
{
    a[i] += b[i] * c[i];
}

float s152(struct args_t * func_args)
{

//    interprocedural data flow analysis
//    collecting information from a subroutine

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            b[i] = d[i] * e[i];
            s152s(a, b, c, i);
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.6

float s161(struct args_t * func_args)
{

//    control flow
//    tests for recognition of loop independent dependences
//    between statements in mutually exclusive regions.

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)/2; nl++) {
        for (int i = 0; i < (32000)-1; ++i) {
            if (b[i] < (float)0.) {
                goto L20;
            }
            a[i] = c[i] + d[i] * e[i];
            goto L10;
L20:
            c[i+1] = a[i] + d[i] * d[i];
L10:
            ;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1161(struct args_t * func_args)
{

//    control flow
//    tests for recognition of loop independent dependences
//    between statements in mutually exclusive regions.

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000)-1; ++i) {
            if (c[i] < (float)0.) {
                goto L20;
            }
            a[i] = c[i] + d[i] * e[i];
            goto L10;
L20:
            b[i] = a[i] + d[i] * d[i];
L10:
            ;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.6

//int s162(int k)
float s162(struct args_t * func_args)
{
//    control flow
//    deriving assertions

    int k = *(int*)func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        if (k > 0) {
            for (int i = 0; i < (32000)-1; i++) {
                a[i] = a[i + k] + b[i] * c[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.7

//int s171(int inc)
float s171(struct args_t * func_args)
{

//    symbolics
//    symbolic dependence tests

    int inc = *(int*)func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i * inc] += b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.7

//int s172( int n1, int n3)
float s172(struct args_t * func_args)
{
//    symbolics
//    vectorizable if n3 .ne. 0

    struct{int a;int b;} * x = func_args->arg_info;
    int n1 = x->a;
    int n3 = x->b;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = n1-1; i < (32000); i += n3) {
            a[i] += b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.7

float s173(struct args_t * func_args)
{
//    symbolics
//    expression in loop bounds and subscripts

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int k = (32000)/2;
    for (int nl = 0; nl < 10*(100000); nl++) {
        for (int i = 0; i < (32000)/2; i++) {
            a[i+k] = a[i] + b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.7

//int s174(int M)
float s174(struct args_t * func_args)
{

//    symbolics
//    loop with subscript that may seem ambiguous

    int M = *(int*)func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 10*(100000); nl++) {
        for (int i = 0; i < M; i++) {
            a[i+M] = a[i] + b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.7

//int s175(int inc)
float s175(struct args_t * func_args)
{

//    symbolics
//    symbolic dependence tests

    int inc = *(int*)func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000)-1; i += inc) {
            a[i] = a[i + inc] + b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %1.7

float s176(struct args_t * func_args)
{

//    symbolics
//    convolution

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int m = (32000)/2;
    for (int nl = 0; nl < 4*((100000)/(32000)); nl++) {
        for (int j = 0; j < ((32000)/2); j++) {
            for (int i = 0; i < m; i++) {
                a[i] += b[i+m-j-1] * c[j];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// **********************************************************
// *                                *
// *            VECTORIZATION                *
// *                                *
// **********************************************************

// %2.1

float s211(struct args_t * func_args)
{

//    statement reordering
//    statement reordering allows vectorization

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 1; i < (32000)-1; i++) {
            a[i] = b[i - 1] + c[i] * d[i];
            b[i] = b[i + 1] - e[i] * d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.1

float s212(struct args_t * func_args)
{

//    statement reordering
//    dependency needing temporary

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000)-1; i++) {
            a[i] *= c[i];
            b[i] += a[i + 1] * d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1213(struct args_t * func_args)
{

//    statement reordering
//    dependency needing temporary

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 1; i < (32000)-1; i++) {
            a[i] = b[i-1]+c[i];
            b[i] = a[i+1]*d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.2

float s221(struct args_t * func_args)
{

//    loop distribution
//    loop that is partially recursive

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)/2; nl++) {
        for (int i = 1; i < (32000); i++) {
            a[i] += c[i] * d[i];
            b[i] = b[i - 1] + a[i] + d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1221(struct args_t * func_args)
{

//    run-time symbolic resolution

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 4; i < (32000); i++) {
            b[i] = b[i - 4] + a[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.2

float s222(struct args_t * func_args)
{

//    loop distribution
//    partial loop vectorizatio recurrence in middle

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)/2; nl++) {
        for (int i = 1; i < (32000); i++) {
            a[i] += b[i] * c[i];
            e[i] = e[i - 1] * e[i - 1];
            a[i] -= b[i] * c[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.3

float s231(struct args_t * func_args)
{
//    loop interchange
//    loop with data dependency

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 100*((100000)/(256)); nl++) {
        for (int i = 0; i < (256); ++i) {
            for (int j = 1; j < (256); j++) {
                aa[j][i] = aa[j - 1][i] + bb[j][i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.3

float s232(struct args_t * func_args)
{

//    loop interchange
//    interchanging of triangular loops

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 100*((100000)/((256))); nl++) {
        for (int j = 1; j < (256); j++) {
            for (int i = 1; i <= j; i++) {
                aa[j][i] = aa[j][i-1]*aa[j][i-1]+bb[j][i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 1.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1232(struct args_t * func_args)
{

//    loop interchange
//    interchanging of triangular loops

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 100*((100000)/(256)); nl++) {
        for (int j = 0; j < (256); j++) {
            for (int i = j; i < (256); i++) {
                aa[i][j] = bb[i][j] + cc[i][j];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 1.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.3

float s233(struct args_t * func_args)
{

//    loop interchange
//    interchanging with one of two inner loops

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 100*((100000)/(256)); nl++) {
        for (int i = 1; i < (256); i++) {
            for (int j = 1; j < (256); j++) {
                aa[j][i] = aa[j-1][i] + cc[j][i];
            }
            for (int j = 1; j < (256); j++) {
                bb[j][i] = bb[j][i-1] + cc[j][i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s2233(struct args_t * func_args)
{

//    loop interchange
//    interchanging with one of two inner loops

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 100*((100000)/(256)); nl++) {
        for (int i = 1; i < (256); i++) {
            for (int j = 1; j < (256); j++) {
                aa[j][i] = aa[j-1][i] + cc[j][i];
            }
            for (int j = 1; j < (256); j++) {
                bb[i][j] = bb[i-1][j] + cc[i][j];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.3
float s235(struct args_t * func_args)
{

//    loop interchanging
//    imperfectly nested loops

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 200*((100000)/(256)); nl++) {
        for (int i = 0; i < (256); i++) {
            a[i] += b[i] * c[i];
            for (int j = 1; j < (256); j++) {
                aa[j][i] = aa[j-1][i] + bb[j][i] * a[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.4

float s241(struct args_t * func_args)
{

//    node splitting
//    preloading necessary to allow vectorization

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 2*(100000); nl++) {
        for (int i = 0; i < (32000)-1; i++) {
            a[i] = b[i] * c[i  ] * d[i];
            b[i] = a[i] * a[i+1] * d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.4

//int s242(float s1, float s2)
float s242(struct args_t * func_args)
{

//    node splitting

    struct{float a;float b;} * x = func_args->arg_info;
    float s1 = x->a;
    float s2 = x->b;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)/5; nl++) {
        for (int i = 1; i < (32000); ++i) {
            a[i] = a[i - 1] + s1 + s2 + b[i] + c[i] + d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.4

float s243(struct args_t * func_args)
{

//    node splitting
//    false dependence cycle breaking

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000)-1; i++) {
            a[i] = b[i] + c[i  ] * d[i];
            b[i] = a[i] + d[i  ] * e[i];
            a[i] = b[i] + a[i+1] * d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.4

float s244(struct args_t * func_args)
{

//    node splitting
//    false dependence cycle breaking

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000)-1; ++i) {
            a[i] = b[i] + c[i] * d[i];
            b[i] = c[i] + b[i];
            a[i+1] = b[i] + a[i+1] * d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1244(struct args_t * func_args)
{

//    node splitting
//    cycle with ture and anti dependency

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000)-1; i++) {
            a[i] = b[i] + c[i] * c[i] + b[i]*b[i] + c[i];
            d[i] = a[i] + a[i+1];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s2244(struct args_t * func_args)
{

//    node splitting
//    cycle with ture and anti dependency

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000)-1; i++) {
            a[i+1] = b[i] + e[i];
            a[i] = b[i] + c[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.5

float s251(struct args_t * func_args)
{

//    scalar and array expansion
//    scalar expansion

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float s;
    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            s = b[i] + c[i] * d[i];
            a[i] = s * s;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1251(struct args_t * func_args)
{

//    scalar and array expansion
//    scalar expansion

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float s;
    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            s = b[i]+c[i];
            b[i] = a[i]+d[i];
            a[i] = s*e[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s2251(struct args_t * func_args)
{

//    scalar and array expansion
//    scalar expansion

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        float s = (float)0.0;
        for (int i = 0; i < (32000); i++) {
            a[i] = s*e[i];
            s = b[i]+c[i];
            b[i] = a[i]+d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s3251(struct args_t * func_args)
{

//    scalar and array expansion
//    scalar expansion

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000)-1; i++){
            a[i+1] = b[i]+c[i];
            b[i]   = c[i]*e[i];
            d[i]   = a[i]*e[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.5

float s252(struct args_t * func_args)
{

//    scalar and array expansion
//    loop with ambiguous scalar temporary

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float t, s;
    for (int nl = 0; nl < (100000); nl++) {
        t = (float) 0.;
        for (int i = 0; i < (32000); i++) {
            s = b[i] * c[i];
            a[i] = s + t;
            t = s;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.5

float s253(struct args_t * func_args)
{

//    scalar and array expansion
//    scalar expansio assigned under if

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float s;
    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            if (a[i] > b[i]) {
                s = a[i] - b[i] * d[i];
                c[i] += s;
                a[i] = s;
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.5

float s254(struct args_t * func_args)
{

//    scalar and array expansion
//    carry around variable

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float x;
    for (int nl = 0; nl < 4*(100000); nl++) {
        x = b[(32000)-1];
        for (int i = 0; i < (32000); i++) {
            a[i] = (b[i] + x) * (float).5;
            x = b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.5

float s255(struct args_t * func_args)
{

//    scalar and array expansion
//    carry around variables, 2 levels

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float x, y;
    for (int nl = 0; nl < (100000); nl++) {
        x = b[(32000)-1];
        y = b[(32000)-2];
        for (int i = 0; i < (32000); i++) {
            a[i] = (b[i] + x + y) * (float).333;
            y = x;
            x = b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.5

float s256(struct args_t * func_args)
{

//    scalar and array expansion
//    array expansion

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 10*((100000)/(256)); nl++) {
        for (int i = 0; i < (256); i++) {
            for (int j = 1; j < (256); j++) {
                a[j] = (float)1.0 - a[j - 1];
                aa[j][i] = a[j] + bb[j][i]*d[j];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.5

float s257(struct args_t * func_args)
{

//    scalar and array expansion
//    array expansion

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 10*((100000)/(256)); nl++) {
        for (int i = 1; i < (256); i++) {
            for (int j = 0; j < (256); j++) {
                a[i] = aa[j][i] - a[i-1];
                aa[j][i] = a[i] + bb[j][i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s258(struct args_t * func_args)
{

//    scalar and array expansion
//    wrap-around scalar under an if

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float s;
    for (int nl = 0; nl < (100000); nl++) {
        s = 0.;
        for (int i = 0; i < (256); ++i) {
            if (a[i] > 0.) {
                s = d[i] * d[i];
            }
            b[i] = s * c[i] + d[i];
            e[i] = (s + (float)1.) * aa[0][i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.7

float s261(struct args_t * func_args)
{

//    scalar and array expansion
//    wrap-around scalar under an if

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float t;
    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 1; i < (32000); ++i) {
            t = a[i] + b[i];
            a[i] = t + c[i-1];
            t = c[i] * d[i];
            c[i] = t;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s271(struct args_t * func_args)
{

//    control flow
//    loop with singularity handling

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            if (b[i] > (float)0.) {
                a[i] += b[i] * c[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.7

//int s272(float t)
float s272(struct args_t * func_args)
{

//    control flow
//    loop with independent conditional

    int t = *(int*)func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            if (e[i] >= t) {
                a[i] += c[i] * d[i];
                b[i] += c[i] * c[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.7

float s273(struct args_t * func_args)
{

//    control flow
//    simple loop with dependent conditional

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] += d[i] * e[i];
            if (a[i] < (float)0.)
                b[i] += d[i] * e[i];
            c[i] += a[i] * d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.7

float s274(struct args_t * func_args)
{

//    control flow
//    complex loop with dependent conditional

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] = c[i] + e[i] * d[i];
            if (a[i] > (float)0.) {
                b[i] = a[i] + b[i];
            } else {
                a[i] = d[i] * e[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.7

float s275(struct args_t * func_args)
{

//    control flow
//    if around inner loop, interchanging needed

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 10*((100000)/(256)); nl++) {
        for (int i = 0; i < (256); i++) {
            if (aa[0][i] > (float)0.) {
                for (int j = 1; j < (256); j++) {
                    aa[j][i] = aa[j-1][i] + bb[j][i] * cc[j][i];
                }
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s2275(struct args_t * func_args)
{

//    loop distribution is needed to be able to interchange

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 100*((100000)/(256)); nl++) {
        for (int i = 0; i < (256); i++) {
            for (int j = 0; j < (256); j++) {
                aa[j][i] = aa[j][i] + bb[j][i] * cc[j][i];
            }
            a[i] = b[i] + c[i] * d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.7

float s276(struct args_t * func_args)
{

//    control flow
//    if test using loop index

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int mid = ((32000)/2);
    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            if (i+1 < mid) {
                a[i] += b[i] * c[i];
            } else {
                a[i] += b[i] * d[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.7
float s277(struct args_t * func_args)
{

//    control flow
//    test for dependences arising from guard variable computation.

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000)-1; i++) {
                if (a[i] >= (float)0.) {
                    goto L20;
                }
                if (b[i] >= (float)0.) {
                    goto L30;
                }
                a[i] += c[i] * d[i];
L30:
                b[i+1] = c[i] + d[i] * e[i];
L20:
;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.7

float s278(struct args_t * func_args)
{

//    control flow
//    if/goto to block if-then-else

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            if (a[i] > (float)0.) {
                goto L20;
            }
            b[i] = -b[i] + d[i] * e[i];
            goto L30;
L20:
            c[i] = -c[i] + d[i] * e[i];
L30:
            a[i] = b[i] + c[i] * d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.7

float s279(struct args_t * func_args)
{

//    control flow
//    vector if/gotos

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)/2; nl++) {
        for (int i = 0; i < (32000); i++) {
            if (a[i] > (float)0.) {
                goto L20;
            }
            b[i] = -b[i] + d[i] * d[i];
            if (b[i] <= a[i]) {
                goto L30;
            }
            c[i] += d[i] * e[i];
            goto L30;
L20:
            c[i] = -c[i] + e[i] * e[i];
L30:
            a[i] = b[i] + c[i] * d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1279(struct args_t * func_args)
{

//    control flow
//    vector if/gotos

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            if (a[i] < (float)0.) {
                if (b[i] > a[i]) {
                    c[i] += d[i] * e[i];
                }
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.7

//int s2710( float x)
float s2710(struct args_t * func_args)
{

//    control flow
//    scalar and vector ifs

    int x = *(int*)func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

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

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.7

float s2711(struct args_t * func_args)
{

//    control flow
//    semantic if removal

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            if (b[i] != (float)0.0) {
                a[i] += b[i] * c[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.7

float s2712(struct args_t * func_args)
{

//    control flow
//    if to elemental min

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            if (a[i] > b[i]) {
                a[i] += b[i] * c[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.8

float s281(struct args_t * func_args)
{

//    crossing thresholds
//    index set splitting
//    reverse data access

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float x;
    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            x = a[(32000)-i-1] + b[i] * c[i];
            a[i] = x-(float)1.0;
            b[i] = x;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1281(struct args_t * func_args)
{

//    crossing thresholds
//    index set splitting
//    reverse data access

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float x;
    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            x = b[i]*c[i] + a[i]*d[i] + e[i];
            a[i] = x-(float)1.0;
            b[i] = x;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.9

float s291(struct args_t * func_args)
{

//    loop peeling
//    wrap around variable, 1 level

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int im1;
    for (int nl = 0; nl < 2*(100000); nl++) {
        im1 = (32000)-1;
        for (int i = 0; i < (32000); i++) {
            a[i] = (b[i] + b[im1]) * (float).5;
            im1 = i;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.9

float s292(struct args_t * func_args)
{

//    loop peeling
//    wrap around variable, 2 levels
//    similar to S291

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int im1, im2;
    for (int nl = 0; nl < (100000); nl++) {
        im1 = (32000)-1;
        im2 = (32000)-2;
        for (int i = 0; i < (32000); i++) {
            a[i] = (b[i] + b[im1] + b[im2]) * (float).333;
            im2 = im1;
            im1 = i;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.9

float s293(struct args_t * func_args)
{

//    loop peeling
//    a(i)=a(0) with actual dependence cycle, loop is vectorizable

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] = a[0];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.10

float s2101(struct args_t * func_args)
{

//    diagonals
//    main diagonal calculation
//    jump in data access

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 10*(100000); nl++) {
        for (int i = 0; i < (256); i++) {
            aa[i][i] += bb[i][i] * cc[i][i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.12

float s2102(struct args_t * func_args)
{

//    diagonals
//    identity matrix, best results vectorize both inner and outer loops

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 100*((100000)/(256)); nl++) {
        for (int i = 0; i < (256); i++) {
            for (int j = 0; j < (256); j++) {
                aa[j][i] = (float)0.;
            }
            aa[i][i] = (float)1.;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %2.11

float s2111(struct args_t * func_args)
{

//    wavefronts, it will make jump in data access

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 100*((100000)/((256))); nl++) {
        for (int j = 1; j < (256); j++) {
            for (int i = 1; i < (256); i++) {
                aa[j][i] = (aa[j][i-1] + aa[j-1][i])/1.9;
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// **********************************************************
//                                *
//            IDIOM RECOGNITION            *
//                                *
// **********************************************************

// %3.1

float s311(struct args_t * func_args)
{

//    reductions
//    sum reduction

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float sum;
    for (int nl = 0; nl < (100000)*10; nl++) {
        sum = (float)0.;
        for (int i = 0; i < (32000); i++) {
            sum += a[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, sum);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float test(float* A){
  float s = (float)0.0;
  for (int i = 0; i < 4; i++)
    s += A[i];
  return s;
}

float s31111(struct args_t * func_args)
{

//    reductions
//    sum reduction

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float sum;
    for (int nl = 0; nl < 2000*(100000); nl++) {
        sum = (float)0.;
        sum += test(a);
        sum += test(&a[4]);
        sum += test(&a[8]);
        sum += test(&a[12]);
        sum += test(&a[16]);
        sum += test(&a[20]);
        sum += test(&a[24]);
        sum += test(&a[28]);
        dummy(a, b, c, d, e, aa, bb, cc, sum);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %3.1

float s312(struct args_t * func_args)
{

//    reductions
//    product reduction

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float prod;
    for (int nl = 0; nl < 10*(100000); nl++) {
        prod = (float)1.;
        for (int i = 0; i < (32000); i++) {
            prod *= a[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, prod);
    }

    gettimeofday(&func_args->t2, NULL);
    return prod;
}

// %3.1
float s313(struct args_t * func_args)
{

//    reductions
//    dot product

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float dot;
    for (int nl = 0; nl < (100000)*5; nl++) {
        dot = (float)0.;
        for (int i = 0; i < (32000); i++) {
            dot += a[i] * b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, dot);
    }

    gettimeofday(&func_args->t2, NULL);
    return dot;
}

// %3.1

float s314(struct args_t * func_args)
{

//    reductions
//    if to max reduction

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float x;
    for (int nl = 0; nl < (100000)*5; nl++) {
        x = a[0];
        for (int i = 0; i < (32000); i++) {
            if (a[i] > x) {
                x = a[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, x);
    }

    gettimeofday(&func_args->t2, NULL);
    return x;
}

// %3.1

float s315(struct args_t * func_args)
{

//    reductions
//    if to max with index reductio 1 dimension

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

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

    gettimeofday(&func_args->t2, NULL);
    return index + x + 1;
}

// %3.1

float s316(struct args_t * func_args)
{

//    reductions
//    if to min reduction

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float x;
    for (int nl = 0; nl < (100000)*5; nl++) {
        x = a[0];
        for (int i = 1; i < (32000); ++i) {
            if (a[i] < x) {
                x = a[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, x);
    }

    gettimeofday(&func_args->t2, NULL);
    return x;
}
// %3.1

float s317(struct args_t * func_args)
{

//    reductions
//    product reductio vectorize with
//    1. scalar expansion of factor, and product reduction
//    2. closed form solution: q = factor**n

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float q;
    for (int nl = 0; nl < 5*(100000); nl++) {
        q = (float)1.;
        for (int i = 0; i < (32000)/2; i++) {
            q *= (float).99;
        }
        dummy(a, b, c, d, e, aa, bb, cc, q);
    }

    gettimeofday(&func_args->t2, NULL);
    return q;
}

// %3.1

//int s318( int inc)
float s318(struct args_t * func_args)
{

//    reductions
//    isamax, max absolute value, increments not equal to 1

    int inc = *(int*)func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int k, index;
    float max, chksum;
    for (int nl = 0; nl < (100000)/2; nl++) {
        k = 0;
        index = 0;
        max = ABS(a[0]);
        k += inc;
        for (int i = 1; i < (32000); i++) {
            if (ABS(a[k]) <= max) {
                goto L5;
            }
            index = i;
            max = ABS(a[k]);
L5:
            k += inc;
        }
        chksum = max + (float) index;
        dummy(a, b, c, d, e, aa, bb, cc, chksum);
    }

    gettimeofday(&func_args->t2, NULL);
    return max + index + 1;
}

// %3.1

float s319(struct args_t * func_args)
{

//    reductions
//    coupled reductions

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float sum;
    for (int nl = 0; nl < 2*(100000); nl++) {
        sum = 0.;
        for (int i = 0; i < (32000); i++) {
            a[i] = c[i] + d[i];
            sum += a[i];
            b[i] = c[i] + e[i];
            sum += b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, sum);
    }

    gettimeofday(&func_args->t2, NULL);
    return sum;
}

// %3.1

float s3110(struct args_t * func_args)
{

//    reductions
//    if to max with index reductio 2 dimensions
//    similar to S315

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int xindex, yindex;
    float max, chksum;
    for (int nl = 0; nl < 100*((100000)/((256))); nl++) {
        max = aa[(0)][0];
        xindex = 0;
        yindex = 0;
        for (int i = 0; i < (256); i++) {
            for (int j = 0; j < (256); j++) {
                if (aa[i][j] > max) {
                    max = aa[i][j];
                    xindex = i;
                    yindex = j;
                }
            }
        }
        chksum = max + (float) xindex + (float) yindex;
        dummy(a, b, c, d, e, aa, bb, cc, chksum);
    }

    gettimeofday(&func_args->t2, NULL);
    return max + xindex+1 + yindex+1;
}

float s13110(struct args_t * func_args)
{

//    reductions
//    if to max with index reductio 2 dimensions

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int xindex, yindex;
    float max, chksum;
    for (int nl = 0; nl < 100*((100000)/((256))); nl++) {
        max = aa[(0)][0];
        xindex = 0;
        yindex = 0;
        for (int i = 0; i < (256); i++) {
            for (int j = 0; j < (256); j++) {
                if (aa[i][j] > max) {
                    max = aa[i][j];
                    xindex = i;
                    yindex = j;
                }
            }
        }
        chksum = max + (float) xindex + (float) yindex;
        dummy(a, b, c, d, e, aa, bb, cc, chksum);
    }

    gettimeofday(&func_args->t2, NULL);
    return max + xindex+1 + yindex+1;
}

// %3.1

float s3111(struct args_t * func_args)
{

//    reductions
//    conditional sum reduction

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float sum;
    for (int nl = 0; nl < (100000)/2; nl++) {
        sum = 0.;
        for (int i = 0; i < (32000); i++) {
            if (a[i] > (float)0.) {
                sum += a[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, sum);
    }

    gettimeofday(&func_args->t2, NULL);
    return sum;
}

// %3.1

float s3112(struct args_t * func_args)
{

//    reductions
//    sum reduction saving running sums

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float sum;
    for (int nl = 0; nl < (100000); nl++) {
        sum = (float)0.0;
        for (int i = 0; i < (32000); i++) {
            sum += a[i];
            b[i] = sum;
        }
        dummy(a, b, c, d, e, aa, bb, cc, sum);
    }

    gettimeofday(&func_args->t2, NULL);
    return sum;
}

// %3.1

float s3113(struct args_t * func_args)
{

//    reductions
//    maximum of absolute value

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float max;
    for (int nl = 0; nl < (100000)*4; nl++) {
        max = ABS(a[0]);
        for (int i = 0; i < (32000); i++) {
            if ((ABS(a[i])) > max) {
                max = ABS(a[i]);
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, max);
    }

    gettimeofday(&func_args->t2, NULL);
    return max;
}

// %3.2

float s321(struct args_t * func_args)
{

//    recurrences
//    first order linear recurrence

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 1; i < (32000); i++) {
            a[i] += a[i-1] * b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %3.2

float s322(struct args_t * func_args)
{

//    recurrences
//    second order linear recurrence

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)/2; nl++) {
        for (int i = 2; i < (32000); i++) {
            a[i] = a[i] + a[i - 1] * b[i] + a[i - 2] * c[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %3.2

float s323(struct args_t * func_args)
{

//    recurrences
//    coupled recurrence

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)/2; nl++) {
        for (int i = 1; i < (32000); i++) {
            a[i] = b[i-1] + c[i] * d[i];
            b[i] = a[i] + c[i] * e[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %3.3

float s331(struct args_t * func_args)
{

//    search loops
//    if to last-1

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int j;
    float chksum;
    for (int nl = 0; nl < (100000); nl++) {
        j = -1;
        for (int i = 0; i < (32000); i++) {
            if (a[i] < (float)0.) {
                j = i;
            }
        }
        chksum = (float) j;
        dummy(a, b, c, d, e, aa, bb, cc, chksum);
    }

    gettimeofday(&func_args->t2, NULL);
    return j+1;
}

// %3.3
//int s332( float t)
float s332(struct args_t * func_args)
{

//    search loops
//    first value greater than threshold

    int t = *(int*)func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int index;
    float value;
    float chksum;
    for (int nl = 0; nl < (100000); nl++) {
        index = -2;
        value = -1.;
        for (int i = 0; i < (32000); i++) {
            if (a[i] > t) {
                index = i;
                value = a[i];
                goto L20;
            }
        }
L20:
        chksum = value + (float) index;
        dummy(a, b, c, d, e, aa, bb, cc, chksum);
    }

    gettimeofday(&func_args->t2, NULL);
    return value;
}

// %3.4

float s341(struct args_t * func_args)
{

//    packing
//    pack positive values
//    not vectorizable, value of j in unknown at each iteration

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int j;
    for (int nl = 0; nl < (100000); nl++) {
        j = -1;
        for (int i = 0; i < (32000); i++) {
            if (b[i] > (float)0.) {
                j++;
                a[j] = b[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %3.4

float s342(struct args_t * func_args)
{

//    packing
//    unpacking
//    not vectorizable, value of j in unknown at each iteration

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int j = 0;
    for (int nl = 0; nl < (100000); nl++) {
        j = -1;
        for (int i = 0; i < (32000); i++) {
            if (a[i] > (float)0.) {
                j++;
                a[i] = b[j];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %3.4

float s343(struct args_t * func_args)
{

//    packing
//    pack 2-d array into one dimension
//    not vectorizable, value of k in unknown at each iteration

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int k;
    for (int nl = 0; nl < 10*((100000)/(256)); nl++) {
        k = -1;
        for (int i = 0; i < (256); i++) {
            for (int j = 0; j < (256); j++) {
                if (bb[j][i] > (float)0.) {
                    k++;
                    flat_2d_array[k] = aa[j][i];
                }
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %3.5

float s351(struct args_t * func_args)
{

//    loop rerolling
//    unrolled saxpy

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float alpha = c[0];
    for (int nl = 0; nl < 8*(100000); nl++) {
        for (int i = 0; i < (32000); i += 5) {
            a[i] += alpha * b[i];
            a[i + 1] += alpha * b[i + 1];
            a[i + 2] += alpha * b[i + 2];
            a[i + 3] += alpha * b[i + 3];
            a[i + 4] += alpha * b[i + 4];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1351(struct args_t * func_args)
{

//    induction pointer recognition

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 8*(100000); nl++) {
        float* __restrict__ A = a;
        float* __restrict__ B = b;
        float* __restrict__ C = c;
        for (int i = 0; i < (32000); i++) {
            *A = *B+*C;
            A++;
            B++;
            C++;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %3.5

float s352(struct args_t * func_args)
{

//    loop rerolling
//    unrolled dot product

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float dot;
    for (int nl = 0; nl < 8*(100000); nl++) {
        dot = (float)0.;
        for (int i = 0; i < (32000); i += 5) {
            dot = dot + a[i] * b[i] + a[i + 1] * b[i + 1] + a[i + 2]
                * b[i + 2] + a[i + 3] * b[i + 3] + a[i + 4] * b[i + 4];
        }
        dummy(a, b, c, d, e, aa, bb, cc, dot);
    }

    gettimeofday(&func_args->t2, NULL);
    return dot;
}

// %3.5

//int s353(int* __restrict__ ip)
float s353(struct args_t * func_args)
{

//    loop rerolling
//    unrolled sparse saxpy
//    gather is required

    int * __restrict__ ip = func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float alpha = c[0];
    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i += 5) {
            a[i] += alpha * b[ip[i]];
            a[i + 1] += alpha * b[ip[i + 1]];
            a[i + 2] += alpha * b[ip[i + 2]];
            a[i + 3] += alpha * b[ip[i + 3]];
            a[i + 4] += alpha * b[ip[i + 4]];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// **********************************************************
//                                *
//             LANGUAGE COMPLETENESS            *
//                                *
// **********************************************************

// %4.1
// %4.2

float s421(struct args_t * func_args)
{

//    storage classes and equivalencing
//    equivalence- no overlap

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    xx = flat_2d_array;

    for (int nl = 0; nl < 4*(100000); nl++) {
        yy = xx;
        for (int i = 0; i < (32000) - 1; i++) {
            xx[i] = yy[i+1] + a[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 1.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

float s1421(struct args_t * func_args)
{

//    storage classes and equivalencing
//    equivalence- no overlap

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    xx = &b[(32000)/2];

    for (int nl = 0; nl < 8*(100000); nl++) {
        for (int i = 0; i < (32000)/2; i++) {
            b[i] = xx[i] + a[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 1.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.2

float s422(struct args_t * func_args)
{

//    storage classes and equivalencing
//    common and equivalence statement
//    anti-dependence, threshold of 4

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    xx = flat_2d_array + 4;

    for (int nl = 0; nl < 8*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            xx[i] = flat_2d_array[i + 8] + a[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.2

float s423(struct args_t * func_args)
{

//    storage classes and equivalencing
//    common and equivalenced variables - with anti-dependence

    // do this again here
    int vl = 64;
    xx = flat_2d_array + vl;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000) - 1; i++) {
            flat_2d_array[i+1] = xx[i] + a[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 1.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.2

float s424(struct args_t * func_args)
{

//    storage classes and equivalencing
//    common and equivalenced variables - overlap
//    vectorizeable in strips of 64 or less

    // do this again here
    int vl = 63;
    xx = flat_2d_array + vl;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000) - 1; i++) {
            xx[i+1] = flat_2d_array[i] + a[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 1.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.3

float s431(struct args_t * func_args)
{

//    parameters
//    parameter statement

    int k1=1;
    int k2=2;
    int k=2*k1-k2;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)*10; nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] = a[i+k] + b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.4

float s441(struct args_t * func_args)
{

//    non-logical if's
//    arithmetic if

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            if (d[i] < (float)0.) {
                a[i] += b[i] * c[i];
            } else if (d[i] == (float)0.) {
                a[i] += b[i] * b[i];
            } else {
                a[i] += c[i] * c[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.4

float s442(struct args_t * func_args)
{

//    non-logical if's
//    computed goto

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)/2; nl++) {
        for (int i = 0; i < (32000); i++) {
            switch (indx[i]) {
                case 1:  goto L15;
                case 2:  goto L20;
                case 3:  goto L30;
                case 4:  goto L40;
            }
L15:
            a[i] += b[i] * b[i];
            goto L50;
L20:
            a[i] += c[i] * c[i];
            goto L50;
L30:
            a[i] += d[i] * d[i];
            goto L50;
L40:
            a[i] += e[i] * e[i];
L50:
            ;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.4

float s443(struct args_t * func_args)
{

//    non-logical if's
//    arithmetic if

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 2*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            if (d[i] <= (float)0.) {
                goto L20;
            } else {
                goto L30;
            }
L20:
            a[i] += b[i] * c[i];
            goto L50;
L30:
            a[i] += b[i] * b[i];
L50:
            ;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.5

float s451(struct args_t * func_args)
{

//    intrinsic functions
//    intrinsics

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)/5; nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] = sinf(b[i]) + cosf(c[i]);
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.5

float s452(struct args_t * func_args)
{

//    intrinsic functions
//    seq function

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] = b[i] + c[i] * (float) (i+1);
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.5

float s453(struct args_t * func_args)
{

//    induction varibale recognition

    float s;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)*2; nl++) {
        s = 0.;
        for (int i = 0; i < (32000); i++) {
            s += (float)2.;
            a[i] = s * b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.7

int s471s(void)
{
// --  dummy subroutine call made in s471
    return 0;
}

float s471(struct args_t * func_args){

//    call statements

    int m = (32000);

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)/2; nl++) {
        for (int i = 0; i < m; i++) {
            x[i] = b[i] + d[i] * d[i];
            s471s();
            b[i] = c[i] + d[i] * e[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.8

float s481(struct args_t * func_args)
{

//    non-local goto's
//    stop statement

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            if (d[i] < (float)0.) {
                exit (0);
            }
            a[i] += b[i] * c[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.8

// %4.8
float s482(struct args_t * func_args)
{

//    non-local goto's
//    other loop exit with code before exit

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] += b[i] * c[i];
            if (c[i] > b[i]) break;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.9

//int s491(int* __restrict__ ip)
float s491(struct args_t * func_args)
{

//    vector semantics
//    indirect addressing on lhs, store in sequence
//    scatter is required

    int * __restrict__ ip = func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[ip[i]] = b[i] + c[i] * d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.11

//int s4112(int* __restrict__ ip, float s)
float s4112(struct args_t * func_args)
{

//    indirect addressing
//    sparse saxpy
//    gather is required

    struct{int * __restrict__ a;float b;} * x = func_args->arg_info;
    int * __restrict__ ip = x->a;
    float s = x->b;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] += b[ip[i]] * s;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.11

//int s4113(int* __restrict__ ip)
float s4113(struct args_t * func_args)
{

//    indirect addressing
//    indirect addressing on rhs and lhs
//    gather and scatter is required

    int * __restrict__ ip = func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[ip[i]] = b[ip[i]] + c[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.11

//int s4114(int* ip, int n1)
float s4114(struct args_t * func_args)
{

//    indirect addressing
//    mix indirect addressing with variable lower and upper bounds
//    gather is required

    struct{int * __restrict__ a;int b;} * x = func_args->arg_info;
    int * __restrict__ ip = x->a;
    int n1 = x->b;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    int k;
    for (int nl = 0; nl < (100000); nl++) {
        for (int i = n1-1; i < (32000); i++) {
            k = ip[i];
            a[i] = b[i] + c[(32000)-k+1-2] * d[i];
            k += 5;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.11

//int s4115(int* __restrict__ ip)
float s4115(struct args_t * func_args)
{

//    indirect addressing
//    sparse dot product
//    gather is required

    int * __restrict__ ip = func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float sum;
    for (int nl = 0; nl < (100000); nl++) {
        sum = 0.;
        for (int i = 0; i < (32000); i++) {
            sum += a[i] * b[ip[i]];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return sum;
}

// %4.11

//int s4116(int* __restrict__ ip, int j, int inc)
float s4116(struct args_t * func_args)
{

//    indirect addressing
//    more complicated sparse sdot
//    gather is required

    struct{int * __restrict__ a;int b;int c;} * x = func_args->arg_info;
    int * __restrict__ ip = x->a;
    int j = x->b;
    int inc = x->c;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float sum;
    int off;
    for (int nl = 0; nl < 100*(100000); nl++) {
        sum = 0.;
        for (int i = 0; i < (256)-1; i++) {
            off = inc + i;
            sum += a[off] * aa[j-1][ip[i]];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return sum;
}

// %4.11

float s4117(struct args_t * func_args)
{

//    indirect addressing
//    seq function

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] = b[i] + c[i/2] * d[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %4.12

float f(float a, float b){
    return a*b;
}

float s4121(struct args_t * func_args)
{

//    statement functions
//    elementwise multiplication

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] += f(b[i],c[i]);
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %5.1

float va(struct args_t * func_args)
{

//    control loops
//    vector assignment

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)*10; nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] = b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %5.1

//int vag( int* __restrict__ ip)
float vag(struct args_t * func_args)
{

//    control loops
//    vector assignment, gather
//    gather is required

    int * __restrict__ ip = func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 2*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] = b[ip[i]];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %5.1

//int vas( int* __restrict__ ip)
float vas(struct args_t * func_args)
{

//    control loops
//    vector assignment, scatter
//    scatter is required

    int * __restrict__ ip = func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 2*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[ip[i]] = b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %5.1

float vif(struct args_t * func_args)
{

//    control loops
//    vector if

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            if (b[i] > (float)0.) {
                a[i] = b[i];
            }
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %5.1

float vpv(struct args_t * func_args)
{

//    control loops
//    vector plus vector

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)*10; nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] += b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %5.1

float vtv(struct args_t * func_args)
{

//    control loops
//    vector times vector

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000)*10; nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] *= b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %5.1

float vpvtv(struct args_t * func_args)
{

//    control loops
//    vector plus vector times vector

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] += b[i] * c[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %5.1

//float vpvts( float s)
float vpvts(struct args_t * func_args)
{

//    control loops
//    vector plus vector times scalar

    float s = *(int*)func_args->arg_info;

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < (100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] += b[i] * s;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %5.1

float vpvpv(struct args_t * func_args)
{

//    control loops
//    vector plus vector plus vector

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] += b[i] + c[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %5.1

float vtvtv(struct args_t * func_args)
{

//    control loops
//    vector times vector times vector

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    for (int nl = 0; nl < 4*(100000); nl++) {
        for (int i = 0; i < (32000); i++) {
            a[i] = a[i] * b[i] * c[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

// %5.1

float vsumr(struct args_t * func_args)
{

//    control loops
//    vector sum reduction

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float sum;
    for (int nl = 0; nl < (100000)*10; nl++) {
        sum = 0.;
        for (int i = 0; i < (32000); i++) {
            sum += a[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, sum);
    }

    gettimeofday(&func_args->t2, NULL);
    return sum;
}

// %5.1

float vdotr(struct args_t * func_args)
{

//    control loops
//    vector dot product reduction

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float dot;
    for (int nl = 0; nl < (100000)*10; nl++) {
        dot = 0.;
        for (int i = 0; i < (32000); i++) {
            dot += a[i] * b[i];
        }
        dummy(a, b, c, d, e, aa, bb, cc, dot);
    }

    gettimeofday(&func_args->t2, NULL);
    return dot;
}

// %5.1

float vbor(struct args_t * func_args)
{

//    control loops
//    basic operations rates, isolate arithmetic from memory traffic
//    all combinations of three, 59 flops for 6 loads and 1 store.

    initialise_arrays(__func__);
    gettimeofday(&func_args->t1, NULL);

    float a1, b1, c1, d1, e1, f1;
    for (int nl = 0; nl < (100000)*10; nl++) {
        for (int i = 0; i < (256); i++) {
            a1 = a[i];
            b1 = b[i];
            c1 = c[i];
            d1 = d[i];
            e1 = e[i];
            f1 = aa[0][i];
            a1 = a1 * b1 * c1 + a1 * b1 * d1 + a1 * b1 * e1 + a1 * b1 * f1 +
                a1 * c1 * d1 + a1 * c1 * e1 + a1 * c1 * f1 + a1 * d1 * e1
                + a1 * d1 * f1 + a1 * e1 * f1;
            b1 = b1 * c1 * d1 + b1 * c1 * e1 + b1 * c1 * f1 + b1 * d1 * e1 +
                b1 * d1 * f1 + b1 * e1 * f1;
            c1 = c1 * d1 * e1 + c1 * d1 * f1 + c1 * e1 * f1;
            d1 = d1 * e1 * f1;
            x[i] = a1 * b1 * c1 * d1;
        }
        dummy(a, b, c, d, e, aa, bb, cc, 0.);
    }

    gettimeofday(&func_args->t2, NULL);
    return calc_checksum(__func__);
}

typedef float(*test_function_t)(struct args_t *);

void time_function(test_function_t vector_func, void * arg_info)
{
    struct args_t func_args = {.arg_info=arg_info};

    double result = vector_func(&func_args);

    double tic=func_args.t1.tv_sec+(func_args.t1.tv_usec/1000000.0);
    double toc=func_args.t2.tv_sec+(func_args.t2.tv_usec/1000000.0);

    double taken = toc-tic;

    printf("%10.3f\t%f\n", taken, result);
}

int main(int argc, char ** argv){
    int n1 = 1;
    int n3 = 1;
    int* ip;
    float s1,s2;
    init(&ip, &s1, &s2);
    printf("Loop \tTime(sec) \tChecksum\n");

    time_function(&s000, NULL);
    time_function(&s111, NULL);
    time_function(&s1111, NULL);
    time_function(&s112, NULL);
    time_function(&s1112, NULL);
    time_function(&s113, NULL);
    time_function(&s1113, NULL);
    time_function(&s114, NULL);
    time_function(&s115, NULL);
    time_function(&s1115, NULL);
    time_function(&s116, NULL);
    time_function(&s118, NULL);
    time_function(&s119, NULL);
    time_function(&s1119, NULL);
    time_function(&s121, NULL);
    time_function(&s122, &(struct{int a;int b;}){n1, n3});
    time_function(&s123, NULL);
    time_function(&s124, NULL);
    time_function(&s125, NULL);
    time_function(&s126, NULL);
    time_function(&s127, NULL);
    time_function(&s128, NULL);
    time_function(&s131, NULL);
    time_function(&s132, NULL);
    time_function(&s141, NULL);
    time_function(&s151, NULL);
    time_function(&s152, NULL);
    time_function(&s161, NULL);
    time_function(&s1161, NULL);
    time_function(&s162, &n1);
    time_function(&s171, &n1);
    time_function(&s172, &(struct{int a;int b;}){n1, n3});
    time_function(&s173, NULL);
    time_function(&s174, &(struct{int a;}){(32000)/2});
    time_function(&s175, &n1);
    time_function(&s176, NULL);
    time_function(&s211, NULL);
    time_function(&s212, NULL);
    time_function(&s1213, NULL);
    time_function(&s221, NULL);
    time_function(&s1221, NULL);
    time_function(&s222, NULL);
    time_function(&s231, NULL);
    time_function(&s232, NULL);
    time_function(&s1232, NULL);
    time_function(&s233, NULL);
    time_function(&s2233, NULL);
    time_function(&s235, NULL);
    time_function(&s241, NULL);
    time_function(&s242, &(struct{float a;float b;}){s1, s2});
    time_function(&s243, NULL);
    time_function(&s244, NULL);
    time_function(&s1244, NULL);
    time_function(&s2244, NULL);
    time_function(&s251, NULL);
    time_function(&s1251, NULL);
    time_function(&s2251, NULL);
    time_function(&s3251, NULL);
    time_function(&s252, NULL);
    time_function(&s253, NULL);
    time_function(&s254, NULL);
    time_function(&s255, NULL);
    time_function(&s256, NULL);
    time_function(&s257, NULL);
    time_function(&s258, NULL);
    time_function(&s261, NULL);
    time_function(&s271, NULL);
    time_function(&s272, &s1);
    time_function(&s273, NULL);
    time_function(&s274, NULL);
    time_function(&s275, NULL);
    time_function(&s2275, NULL);
    time_function(&s276, NULL);
    time_function(&s277, NULL);
    time_function(&s278, NULL);
    time_function(&s279, NULL);
    time_function(&s1279, NULL);
    time_function(&s2710, &s1);
    time_function(&s2711, NULL);
    time_function(&s2712, NULL);
    time_function(&s281, NULL);
    time_function(&s1281, NULL);
    time_function(&s291, NULL);
    time_function(&s292, NULL);
    time_function(&s293, NULL);
    time_function(&s2101, NULL);
    time_function(&s2102, NULL);
    time_function(&s2111, NULL);
    time_function(&s311, NULL);
    time_function(&s31111, NULL);
    time_function(&s312, NULL);
    time_function(&s313, NULL);
    time_function(&s314, NULL);
    time_function(&s315, NULL);
    time_function(&s316, NULL);
    time_function(&s317, NULL);
    time_function(&s318, &n1);
    time_function(&s319, NULL);
    time_function(&s3110, NULL);
    time_function(&s13110, NULL);
    time_function(&s3111, NULL);
    time_function(&s3112, NULL);
    time_function(&s3113, NULL);
    time_function(&s321, NULL);
    time_function(&s322, NULL);
    time_function(&s323, NULL);
    time_function(&s331, NULL);
    time_function(&s332, &s1);
    time_function(&s341, NULL);
    time_function(&s342, NULL);
    time_function(&s343, NULL);
    time_function(&s351, NULL);
    time_function(&s1351, NULL);
    time_function(&s352, NULL);
    time_function(&s353, ip);
    time_function(&s421, NULL);
    time_function(&s1421, NULL);
    time_function(&s422, NULL);
    time_function(&s423, NULL);
    time_function(&s424, NULL);
    time_function(&s431, NULL);
    time_function(&s441, NULL);
    time_function(&s442, NULL);
    time_function(&s443, NULL);
    time_function(&s451, NULL);
    time_function(&s452, NULL);
    time_function(&s453, NULL);
    time_function(&s471, NULL);
    time_function(&s481, NULL);
    time_function(&s482, NULL);
    time_function(&s491, ip);
    time_function(&s4112, &(struct{int*a;float b;}){ip, s1});
    time_function(&s4113, ip);
    time_function(&s4114, &(struct{int*a;int b;}){ip, n1});
    time_function(&s4115, ip);
    time_function(&s4116, &(struct{int * a; int b; int c;}){ip, (256)/2, n1});
    time_function(&s4117, NULL);
    time_function(&s4121, NULL);
    time_function(&va, NULL);
    time_function(&vag, ip);
    time_function(&vas, ip);
    time_function(&vif, NULL);
    time_function(&vpv, NULL);
    time_function(&vtv, NULL);
    time_function(&vpvtv, NULL);
    time_function(&vpvts, &s1);
    time_function(&vpvpv, NULL);
    time_function(&vtvtv, NULL);
    time_function(&vsumr, NULL);
    time_function(&vdotr, NULL);
    time_function(&vbor, NULL);

    return EXIT_SUCCESS;
}
