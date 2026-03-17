#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct CPU {
  int pc;
  int npc;
  int branch_pc;
};

/* Variables and functions */

void cpu_advance_pc(struct CPU *cpu)

{

  (cpu)->pc = (cpu)->npc;

  if ((cpu)->branch_pc != 0xffffffff) {
    (cpu)->npc = ((cpu)->branch_pc);
    (cpu)->branch_pc = (0xffffffff);
  } else {
    (cpu)->npc = ((cpu)->npc + 4);
  }
}