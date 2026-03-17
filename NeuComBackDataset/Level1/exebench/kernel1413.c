#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ uart_interrupt_t;

/* Variables and functions */
int /*<<< orphan*/ URIER;

void uart_enable_interrupts(uart_interrupt_t int_cfg) { URIER = int_cfg; }