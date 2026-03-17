#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ SplitName;

/* Variables and functions */

void SwapSN(SplitName *sn1, SplitName *sn2) {
  SplitName tmpSN;

  tmpSN = *sn2;
  *sn2 = *sn1;
  *sn1 = tmpSN;
}