#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ uint32;
typedef size_t uint16;
typedef int int32;
typedef scalar_t__ int16;

/* Variables and functions */
scalar_t__ *areg;
int inst;
scalar_t__ *reg;
int status;

void Opb648(void) {
  register int16 source;
  register int16 target;
  register uint16 address2;
  source = (int16)areg[(inst & 7)];
  address2 = 3;
  target = (int16)reg[address2];
  {
    register int32 tgt;
    tgt = target - source;
    if ((uint32)source > (uint32)target)
      status |= 0x1U;
    else
      status &= ~0x1U;
    if ((tgt < -32768) || (tgt > 32767))
      status |= 0x2U;
    else
      status &= ~0x2U;
    if ((int16)tgt) {
      status &= ~0xcU;
      if ((int16)tgt < 0)
        status |= 0x8U;
    } else {
      status |= 0x4U;
      status &= ~0x8U;
    };
  };
}