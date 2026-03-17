#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ logical;

/* Variables and functions */
int /*<<< orphan*/ TNC_FALSE;
int /*<<< orphan*/ TNC_TRUE;

logical removeConstraint(double gtpnew, double gnorm, double pgtolfs, double f,
                         double fLastConstraint, double g[], int pivot[],
                         int n) {
  double cmax, t;
  int imax, i;

  if (((fLastConstraint - f) <= (gtpnew * -0.5)) && (gnorm > pgtolfs)) {
    return TNC_FALSE;
  }

  imax = -1;
  cmax = 0.0;

  for (i = 0; i < n; i++) {
    if (pivot[i] == 2) {
      continue;
    }
    t = -pivot[i] * g[i];
    if (t < cmax) {
      cmax = t;
      imax = i;
    }
  }

  if (imax != -1) {
    pivot[imax] = 0;
    return TNC_TRUE;
  } else {
    return TNC_FALSE;
  }
}