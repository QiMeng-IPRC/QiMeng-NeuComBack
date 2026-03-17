#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef size_t uint8;
typedef size_t uint16;
typedef int int8;

/* Variables and functions */
int inst;
scalar_t__ *reg;
int status;

void Ope910(void) {
  register int8 source;
  register int8 target;
  register uint16 address2;
  source = 4;
  address2 = (inst & 7);
  target = (int8)reg[address2];
  source &= 0x3f;
  if (0)
    status |= 0x2U;
  else
    status &= ~0x2U;
  if (source == 0) {
    if ((!!(status & 0x10)))
      status |= 0x1U;
    else
      status &= ~0x1U;
  } else {
    register uint16 tgt1, tgt2;
    source %= 9;
    tgt1 = (uint8)target;
    tgt1 |= (uint16)((!!(status & 0x10))) << 8;
    tgt2 = tgt1;
    tgt2 >>= (9 - source);
    tgt1 <<= source;
    tgt1 |= tgt2;
    if ((tgt1 >> 8) & 0x1)
      status |= 0x11U;
    else
      status &= ~0x11U;
    target = tgt1;
  }
  if (target) {
    status &= ~0xcU;
    if (target < 0)
      status |= 0x8U;
  } else {
    status |= 0x4U;
    status &= ~0x8U;
  };
  *((int8 *)&reg[address2]) = target;
}