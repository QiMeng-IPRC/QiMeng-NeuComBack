#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct irq_desc {
  int /*<<< orphan*/ status;
};

/* Variables and functions */
int /*<<< orphan*/ IRQ_MOVE_PENDING;

void irq_compat_clr_move_pending(struct irq_desc *desc) {
  desc->status &= ~IRQ_MOVE_PENDING;
}