#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ *HiDecomFilCoef;
scalar_t__ *HiReconFilCoef;
scalar_t__ *LowDecomFilCoef;
scalar_t__ *LowReconFilCoef;

void filter_clear() {
  int count;
  for (count = 0; count < 30; count++) {
    LowDecomFilCoef[count] = 0;
    LowReconFilCoef[count] = 0;
    HiDecomFilCoef[count] = 0;
    HiReconFilCoef[count] = 0;
  }
  return;
}