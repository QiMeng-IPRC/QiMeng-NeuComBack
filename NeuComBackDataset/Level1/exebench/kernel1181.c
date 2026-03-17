#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int u32;
struct TYPE_3__ {
  int lo;
  int vi;
};
typedef TYPE_1__ dtVal;

/* Variables and functions */

void dtvUnwrapCplxfv(dtVal v, float *fv) {
  u32 ix, iy;
  ix = v.lo << 4;
  iy = v.vi >> 24;
  fv[0] = *(float *)(&ix);
  fv[1] = *(float *)(&iy);
}