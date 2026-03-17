#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ STATUS_SUCCESS;
int /*<<< orphan*/ gcdi_status;

int gcdi2(int x, int y) {
  if (x == 0) {
    gcdi_status = STATUS_SUCCESS;
    return y;
  } else
    return gcdi2(y % x, x);
}