#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef size_t integer;
typedef scalar_t__ doublereal;

/* Variables and functions */

int dcnst0_(integer *neq, doublereal *y, integer *icnstr, integer *iret) {

  static doublereal zero = 0.;

  integer i__1;

  integer i__;
# 4183 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/Cantera/cantera-svn/refs/heads/master/cantera-2.0.2/ext/f2c_math/ddaspk.c"
  --icnstr;
  --y;

  *iret = 0;
  i__1 = *neq;
  for (i__ = 1; i__ <= i__1; ++i__) {
    if (icnstr[i__] == 2) {
      if (y[i__] <= zero) {
        *iret = i__;
        return 0;
      }
    } else if (icnstr[i__] == 1) {
      if (y[i__] < zero) {
        *iret = i__;
        return 0;
      }
    } else if (icnstr[i__] == -1) {
      if (y[i__] > zero) {
        *iret = i__;
        return 0;
      }
    } else if (icnstr[i__] == -2) {
      if (y[i__] >= zero) {
        *iret = i__;
        return 0;
      }
    }
  }
  return 0;
}