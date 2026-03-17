#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int int32;

/* Variables and functions */

void GPS_Math_Deg_To_DegMinSec(double v, int32 *d, int32 *m, double *s) {
  int32 sign;
  double t;

  if (v < (double)0.) {
    v *= (double)-1.;
    sign = 1;
  } else
    sign = 0;

  *d = (int32)v;
  t = (v - (double)*d) * (double)60.0;
  *s = (t - (double)*m) * (double)60.0;

  if (*s > (double)59.999) {
    ++t;
    *s = (double)0.0;
  }

  if (t > (double)59.999) {
    ++*d;
    t = 0;
  }

  *m = (int32)t;

  if (sign)
    *d = -*d;

  return;
}