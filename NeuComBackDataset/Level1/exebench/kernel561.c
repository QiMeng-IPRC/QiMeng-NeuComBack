#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_10__ TYPE_4__;
typedef struct TYPE_9__ TYPE_3__;
typedef struct TYPE_8__ TYPE_2__;
typedef struct TYPE_7__ TYPE_1__;

/* Type definitions */
struct TYPE_9__ {
  int real;
  int imag;
};
struct TYPE_8__ {
  int real;
  int imag;
};
struct TYPE_7__ {
  int real;
  int imag;
};
struct TYPE_10__ {
  int m00im;
  int m11im;
  int m22im;
  TYPE_3__ m12;
  TYPE_2__ m02;
  TYPE_1__ m01;
};
typedef TYPE_4__ fanti_hermitmat;
typedef int Real;

/* Variables and functions */

void scalar_mult_sum_antiH(fanti_hermitmat *b, Real s, fanti_hermitmat *c) {
  c->m01.real += s * b->m01.real;
  c->m01.imag += s * b->m01.imag;
  c->m02.real += s * b->m02.real;
  c->m02.imag += s * b->m02.imag;
  c->m12.real += s * b->m12.real;
  c->m12.imag += s * b->m12.imag;
  c->m00im += s * b->m00im;
  c->m11im += s * b->m11im;
  c->m22im += s * b->m22im;
}