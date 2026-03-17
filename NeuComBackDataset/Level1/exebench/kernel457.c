#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int uint32;
typedef size_t uint16;
typedef int int16;

/* Variables and functions */
int inst;
scalar_t__ *reg;
int status;

void Opeb50(void) {
  register int16 source;
  register int16 target;
  register uint16 address2;
  source = 5;
  address2 = (inst & 7);
  target = (int16)reg[address2];
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
    register uint32 tgt1, tgt2;
    source %= 17;
    tgt1 = (uint16)target;
    tgt1 |= (uint32)((!!(status & 0x10))) << 16;
    tgt2 = tgt1;
    tgt2 >>= (17 - source);
    tgt1 <<= source;
    tgt1 |= tgt2;
    if ((tgt1 >> 16) & 0x1)
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
  *((int16 *)&reg[address2]) = target;
}