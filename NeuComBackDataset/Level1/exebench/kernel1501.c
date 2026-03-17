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
int status;

void Opce80(void) {
  register int32 source;
  register int32 target;
  register uint16 address2;
  source = (int32)reg[(inst & 7)];
  address2 = 7;
  target = (int32)reg[address2];
  target &= source;
  if (target) {
    status &= ~0xfU;
    if (target < 0)
      status |= 0x8U;
  } else {
    status |= 0x4U;
    status &= ~0xaU;
  };
  reg[address2] = target;
}