#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int od_coeff;

/* Variables and functions */

void od_pre_filter4(od_coeff _y[4], const od_coeff _x[4]) {

  int t[4];

  t[3] = _x[0] - _x[3];
  t[2] = _x[1] - _x[2];
  t[1] = _x[1] - (t[2] >> 1);
  t[0] = _x[0] - (t[3] >> 1);

  ;

  t[2] = t[2] * (85) >> 6;
  t[2] += -t[2] >> ((32) - 1) & 1;

  ;

  t[3] = t[3] * (75) >> 6;
  t[3] += -t[3] >> ((32) - 1) & 1;

  ;

  t[3] += (t[2] * (-15) + 32) >> 6;
  ;

  t[2] += (t[3] * (33) + 32) >> 6;

  t[0] += t[3] >> 1;
  _y[0] = (od_coeff)t[0];
  t[1] += t[2] >> 1;
  _y[1] = (od_coeff)t[1];
  _y[2] = (od_coeff)(t[1] - t[2]);
  _y[3] = (od_coeff)(t[0] - t[3]);
}