#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  unsigned short pc;
};
struct cpu {
  TYPE_1__ regs;
};

/* Variables and functions */

void cpu_set_pc(struct cpu *cpu, unsigned short pc) { cpu->regs.pc = pc; }