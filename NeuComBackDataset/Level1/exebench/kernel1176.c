#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ achar0;
scalar_t__ achar1;
int /*<<< orphan*/ failures;

void char_lt_char(void) {
  if (achar0 < achar1)
    failures++;
}