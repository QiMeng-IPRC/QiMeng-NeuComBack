#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ stat_accum_charge_days;
scalar_t__ stat_accum_cycles;
int /*<<< orphan*/ time_day;

void reset_statistic_accumulator() {
  stat_accum_cycles = 0;
  stat_accum_charge_days = time_day;
}