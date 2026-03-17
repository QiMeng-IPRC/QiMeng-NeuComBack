#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef size_t uint16;
typedef int int8;

/* Variables and functions */
int inst;
int /*<<< orphan*/ *reg;
int status;

void Op5ac0(void) {
  register int8 target;
  register uint16 address2;
  address2 = (inst & 7);
  target = !(!!(status & 0x8)) ? 0xff : 0x00;
  *((int8 *)&reg[address2]) = target;
}