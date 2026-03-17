#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ bit;

/* Variables and functions */
int /*<<< orphan*/ lt_timer_is_12;

void lt_timer_set_hour_12(bit val) { lt_timer_is_12 = val; }