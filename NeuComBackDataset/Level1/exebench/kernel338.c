#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  int add;
  int mul;
  int fma;
  int other;
};
typedef TYPE_1__ opcnt;
typedef int INT;

/* Variables and functions */

void fftwf_ops_madd(INT m, const opcnt *a, const opcnt *b, opcnt *dst) {
  dst->add = m * a->add + b->add;
  dst->mul = m * a->mul + b->mul;
  dst->fma = m * a->fma + b->fma;
  dst->other = m * a->other + b->other;
}