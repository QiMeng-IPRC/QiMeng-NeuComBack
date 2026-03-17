#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ INT_TIM1CFG;
int /*<<< orphan*/ saved_TIM1CFG;

void rtimer_arch_enable_irq(void) { INT_TIM1CFG = saved_TIM1CFG; }