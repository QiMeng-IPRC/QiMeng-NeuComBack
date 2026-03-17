#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef size_t uint16;
typedef int int32;

/* Variables and functions */
int inst;
int *reg;

void Op5448(void) {
  register int32 source;
  register int32 target;
  register uint16 address2;
  source = 2;
  address2 = 8 + (inst & 7);
  target = (int32)reg[address2];
  target += source;
  reg[address2] = target;
}