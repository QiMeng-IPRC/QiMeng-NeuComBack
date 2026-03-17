#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
float *x;

void F_influenza(float t, float *u, float *d) {
  float u1 = ((u)[(1) - 1]);
  float u2 = ((u)[(2) - 1]);
  float u3 = ((u)[(3) - 1]);
  float u4 = ((u)[(4) - 1]);

  ((d)[(1) - 1]) = -x[1] * u1 * u4;
  ((d)[(2) - 1]) = x[1] * u1 * u4 - u2 / x[2];
  ((d)[(3) - 1]) = u2 / x[2] - u3 / x[3];
  ((d)[(4) - 1]) = x[4] * u3 / x[5] - x[6] * u4;
}