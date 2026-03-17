#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *emu_cr_reg;

void cpu_init_ctrlreg_emu() {

  emu_cr_reg[0] = 0x00000010;
  emu_cr_reg[1] = 0x00000000;
  emu_cr_reg[2] = 0x00000000;
  emu_cr_reg[3] = 0x00000000;
  emu_cr_reg[4] = 0x00000000;
}