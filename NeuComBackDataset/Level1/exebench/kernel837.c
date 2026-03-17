#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
float exp_cst1;
float exp_cst2;

float expapprox(float val) {
  union {
    int i;
    float f;
  } xu, xu2;
  float val2, val3, val4, b;
  int val4i;
  val2 = 12102203.1615614f * val + 1065353216.f;
  val3 = val2 < exp_cst1 ? val2 : exp_cst1;
  val4 = val3 > exp_cst2 ? val3 : exp_cst2;
  val4i = (int)val4;
  xu.i = val4i & 0x7F800000;
  xu2.i = (val4i & 0x7FFFFF) | 0x3F800000;
  b = xu2.f;
# 62 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/robertostling/efmaral/refs/heads/master/simd_math_prims.h"
  return xu.f * (0.510397365625862338668154f +
                 b * (0.310670891004095530771135f +
                      b * (0.168143436463395944830000f +
                           b * (-2.88093587581985443087955e-3f +
                                b * 1.3671023382430374383648148e-2f))));
}