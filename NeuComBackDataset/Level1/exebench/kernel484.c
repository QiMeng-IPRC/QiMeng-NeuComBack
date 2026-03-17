#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ clockticks6502;
int oldpc;
int pc;
scalar_t__ reladdr;
int status;

void bvc() {
  if ((status & 0x40) == 0) {
    oldpc = pc;
    pc += reladdr;
    if ((oldpc & 0xFF00) != (pc & 0xFF00))
      clockticks6502 += 2;
    else
      clockticks6502++;
  }
}