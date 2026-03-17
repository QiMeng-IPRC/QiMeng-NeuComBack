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

void Op0d80(void) {
  register int32 source;
  register int32 target;
  register uint16 address2;
  source = (int32)reg[6];
  address2 = (inst & 7);
  target = (int32)reg[address2];
  if (0 == (target & (1 << (source & 31))))
    status |= 0x4U;
  else
    status &= ~0x4U;
  ;
  target &= ~(1 << (source & 31));
  reg[address2] = target;
}