#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ ESetTimeStateNull;
int /*<<< orphan*/ TheSetTimeState;

void engine_state_set_time_deinit(void) { TheSetTimeState = ESetTimeStateNull; }