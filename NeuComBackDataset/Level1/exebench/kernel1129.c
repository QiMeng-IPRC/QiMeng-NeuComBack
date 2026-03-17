#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
size_t AF;
size_t EF;
size_t IR;
int *regs;

void cmp(void) {

  int ra = (7 + ((regs[IR] & 0x0C) >> 2));
  int rb = (7 + (regs[IR] & 0x03));

  regs[AF] = regs[ra] > regs[rb];
  regs[EF] = regs[ra] == regs[rb];
  return;
}