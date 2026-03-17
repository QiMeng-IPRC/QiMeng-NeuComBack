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
typedef int int32;

/* Variables and functions */
int inst;
int *reg;
int status;

void Ope690(void) {
  register int32 source;
  register int32 target;
  register uint16 address2;
  source = 3;
  address2 = (inst & 7);
  target = (int32)reg[address2];
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
    source %= 33;
    tgt2 = tgt1 = (uint32)target;
    if (source != 0) {
      tgt2 <<= 1;
      tgt2 |= (uint32)((!!(status & 0x10)));
      tgt2 <<= (32 - source);
      tgt1 >>= (source - 1);
      if (tgt1 & 0x1)
        status |= 0x11U;
      else
        status &= ~0x11U;
      tgt1 >>= 1;
      tgt1 |= tgt2;
      target = tgt1;
    }
  }
  if (target) {
    status &= ~0xcU;
    if (target < 0)
      status |= 0x8U;
  } else {
    status |= 0x4U;
    status &= ~0x8U;
  };
  reg[address2] = target;
}