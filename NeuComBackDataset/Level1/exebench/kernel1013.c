#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int aint0;
int /*<<< orphan*/ failures;

void compare_int_to_lits2(void) {

  if (!aint0)
    failures++;

  if (aint0 == 1)
    failures++;

  if (aint0 == 7)
    failures++;

  if (aint0 != 5)
    failures++;
}