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
typedef scalar_t__ int32;

/* Variables and functions */
scalar_t__ *areg;
int inst;
scalar_t__ *reg;
int status;

void Op9e88(void) {
  register int32 source;
  register int32 target;
  register uint16 address2;
  source = (int32)areg[(inst & 7)];
  address2 = 7;
  target = (int32)reg[address2];
  if ((target < 0) != (source < 0))
    status |= 0x2U;
  else
    status &= ~0x2U;
  if ((uint32)source > (uint32)target)
    status |= 0x11U;
  else
    status &= ~0x11U;
  target -= source;
  if ((!!(status & 0x2)) && (target < 0) == (source < 0))
    status |= 0x2U;
  else
    status &= ~0x2U;
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