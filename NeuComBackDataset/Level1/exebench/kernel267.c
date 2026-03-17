#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int mmftraffic;
int /*<<< orphan*/ mmftrafficM;

void addftraffic(int n) {
  mmftraffic = mmftraffic + n;
  while (mmftraffic >= 1000000) {
    mmftraffic = mmftraffic - 1000000;
    ++mmftrafficM;
  }
  while (mmftraffic < 0) {
    mmftraffic = mmftraffic + 1000000;
    --mmftraffic;
  }
}