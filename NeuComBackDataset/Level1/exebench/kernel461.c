#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ integer;

/* Variables and functions */

int hpsolb(integer *n, double *t, integer *iorder, integer *iheap) {

  integer i__1;

  static integer i__, j, k;
  static double out, ddum;
  static integer indxin, indxou;
# 1566 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/isucsp/imgRecSrc/refs/heads/master/utils/L-BFGS-B-C/src/subalgorithms.c"
  --iorder;
  --t;

  if (*iheap == 0) {

    i__1 = *n;
    for (k = 2; k <= i__1; ++k) {
      ddum = t[k];
      indxin = iorder[k];

      i__ = k;
    L10:
      if (i__ > 1) {
        j = i__ / 2;
        if (ddum < t[j]) {
          t[i__] = t[j];
          iorder[i__] = iorder[j];
          i__ = j;
          goto L10;
        }
      }
      t[i__] = ddum;
      iorder[i__] = indxin;
    }
  }

  if (*n > 1) {
    i__ = 1;
    out = t[1];
    indxou = iorder[1];
    ddum = t[*n];
    indxin = iorder[*n];

  L30:
    j = i__ + i__;
    if (j <= *n - 1) {
      if (t[j + 1] < t[j]) {
        ++j;
      }
      if (t[j] < ddum) {
        t[i__] = t[j];
        iorder[i__] = iorder[j];
        i__ = j;
        goto L30;
      }
    }
    t[i__] = ddum;
    iorder[i__] = indxin;

    t[*n] = out;
    iorder[*n] = indxou;
  }
  return 0;
}