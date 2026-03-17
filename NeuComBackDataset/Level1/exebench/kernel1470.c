#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
double t1;
double t2;
double t3;
double t4;

void t(double *a, double *b) {
  t1 = a[-1];
  t2 = a[0];
  t3 = a[1];
  t4 = a[2];
  b[-1] = t1;
  b[0] = t2;
  b[1] = t3;
  b[2] = t4;
}