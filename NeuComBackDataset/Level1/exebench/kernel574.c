#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ TMR_TMR16B1TCR;
int /*<<< orphan*/ TMR_TMR16B1TCR_COUNTERENABLE_MASK;

void pwmStop(void) { TMR_TMR16B1TCR &= ~(TMR_TMR16B1TCR_COUNTERENABLE_MASK); }