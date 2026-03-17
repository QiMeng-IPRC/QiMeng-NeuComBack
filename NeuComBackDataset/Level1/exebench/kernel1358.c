#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef unsigned int irqmask;
struct TYPE_2__ {
  unsigned int VICINTENCLEAR;
};

/* Variables and functions */
TYPE_1__ *regs;

void disable_irq(irqmask irq) { regs->VICINTENCLEAR = 1U << irq; }