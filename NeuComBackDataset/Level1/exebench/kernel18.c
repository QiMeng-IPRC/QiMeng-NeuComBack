#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int aint1;
int /*<<< orphan*/ dummy;
int /*<<< orphan*/ failures;

void int_gt_lit_else(void) {
  if (aint1 <= 0x10)
    dummy++;
  else
    failures++;
}