#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int gsmword;

/* Variables and functions */

void Coefficients_27_39(gsmword *LARpp_j_1, gsmword *LARpp_j, gsmword *LARp) {
  int i;

  for (i = 1; i <= 8; i++, LARpp_j_1++, LARpp_j++, LARp++) {
    *LARp = (gsmword)(((*LARpp_j_1) >> (2)) + ((*LARpp_j) >> (2)));
    *LARp += (gsmword)((*LARpp_j) >> (1));
  }
}