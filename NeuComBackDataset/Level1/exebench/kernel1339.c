#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int integer;
typedef scalar_t__ doublereal;

/* Variables and functions */

int drotmg_(doublereal *dd1, doublereal *dd2, doublereal *dx1, doublereal *dy1,
            doublereal *dparam) {

  static doublereal zero = 0.;
  static doublereal one = 1.;
  static doublereal two = 2.;
  static doublereal gam = 4096.;
  static doublereal gamsq = 16777216.;
  static doublereal rgamsq = 5.9604645e-8;

  static char fmt_120[] = "";
  static char fmt_150[] = "";
  static char fmt_180[] = "";
  static char fmt_210[] = "";

  doublereal d__1;

  doublereal du, dp1, dp2, dq1, dq2, dh11, dh12, dh21, dh22;
  integer igo;
  doublereal dflag, dtemp;

  static char *igo_fmt;
# 99 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/ArcEarth/OpenAvataring/refs/heads/master/amp/ampblas/test/reference_blas/SRC/drotmg.c"
  --dparam;

  if (!(*dd1 < zero)) {
    goto L10;
  }

  goto L60;
L10:

  dp2 = *dd2 * *dy1;
  if (!(dp2 == zero)) {
    goto L20;
  }
  dflag = -two;
  goto L260;

L20:
  dp1 = *dd1 * *dx1;
  dq2 = dp2 * *dy1;
  dq1 = dp1 * *dx1;

  if (!(((dq1) >= 0 ? (dq1) : -(dq1)) > ((dq2) >= 0 ? (dq2) : -(dq2)))) {
    goto L40;
  }
  dh21 = -(*dy1) / *dx1;
  dh12 = dp2 / dp1;

  du = one - dh12 * dh21;

  if (!(du <= zero)) {
    goto L30;
  }

  goto L60;
L30:
  dflag = zero;
  *dd1 /= du;
  *dd2 /= du;
  *dx1 *= du;

  goto L100;
L40:
  if (!(dq2 < zero)) {
    goto L50;
  }

  goto L60;
L50:
  dflag = one;
  dh11 = dp1 / dp2;
  dh22 = *dx1 / *dy1;
  du = one + dh11 * dh22;
  dtemp = *dd2 / du;
  *dd2 = *dd1 / du;
  *dd1 = dtemp;
  *dx1 = *dy1 * du;

  goto L100;

L60:
  dflag = -one;
  dh11 = zero;
  dh12 = zero;
  dh21 = zero;
  dh22 = zero;

  *dd1 = zero;
  *dd2 = zero;
  *dx1 = zero;

  goto L220;

L70:
  if (!(dflag >= zero)) {
    goto L90;
  }

  if (!(dflag == zero)) {
    goto L80;
  }
  dh11 = one;
  dh22 = one;
  dflag = -one;
  goto L90;
L80:
  dh21 = -one;
  dh12 = one;
  dflag = -one;
L90:
  switch (igo) {
  case 0:
    goto L120;
  case 1:
    goto L150;
  case 2:
    goto L180;
  case 3:
    goto L210;
  }

L100:
L110:
  if (!(*dd1 <= rgamsq)) {
    goto L130;
  }
  if (*dd1 == zero) {
    goto L160;
  }
  igo = 0;
  igo_fmt = fmt_120;

  goto L70;
L120:

  d__1 = gam;
  *dd1 *= d__1 * d__1;
  *dx1 /= gam;
  dh11 /= gam;
  dh12 /= gam;
  goto L110;
L130:
L140:
  if (!(*dd1 >= gamsq)) {
    goto L160;
  }
  igo = 1;
  igo_fmt = fmt_150;

  goto L70;
L150:

  d__1 = gam;
  *dd1 /= d__1 * d__1;
  *dx1 *= gam;
  dh11 *= gam;
  dh12 *= gam;
  goto L140;
L160:
L170:
  if (!(((*dd2) >= 0 ? (*dd2) : -(*dd2)) <= rgamsq)) {
    goto L190;
  }
  if (*dd2 == zero) {
    goto L220;
  }
  igo = 2;
  igo_fmt = fmt_180;

  goto L70;
L180:

  d__1 = gam;
  *dd2 *= d__1 * d__1;
  dh21 /= gam;
  dh22 /= gam;
  goto L170;
L190:
L200:
  if (!(((*dd2) >= 0 ? (*dd2) : -(*dd2)) >= gamsq)) {
    goto L220;
  }
  igo = 3;
  igo_fmt = fmt_210;

  goto L70;
L210:

  d__1 = gam;
  *dd2 /= d__1 * d__1;
  dh21 *= gam;
  dh22 *= gam;
  goto L200;
L220:
  if (dflag < 0.) {
    goto L250;
  } else if (dflag == 0) {
    goto L230;
  } else {
    goto L240;
  }
L230:
  dparam[3] = dh21;
  dparam[4] = dh12;
  goto L260;
L240:
  dparam[2] = dh11;
  dparam[5] = dh22;
  goto L260;
L250:
  dparam[2] = dh11;
  dparam[3] = dh21;
  dparam[4] = dh12;
  dparam[5] = dh22;
L260:
  dparam[1] = dflag;
  return 0;
}