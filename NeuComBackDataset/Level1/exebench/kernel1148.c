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
typedef scalar_t__ int8;

/* Variables and functions */
int inst;
scalar_t__ *reg;
int status;

void Opdf00(void) {
  register int8 source;
  register int8 target;
  register uint16 address2;
  source = (int8)reg[(inst & 7)];
  address2 = 7;
  target = (int8)reg[address2];
  if ((target < 0) == (source < 0))
    status |= 0x2U;
  else
    status &= ~0x2U;
  if ((!!(status & 0x10))) {
    if ((uint32)source >= (uint32)~target)
      status |= 0x11U;
    else
      status &= ~0x11U;
    target += source + 1;
  } else {
    if ((uint32)source > (uint32)~target)
      status |= 0x11U;
    else
      status &= ~0x11U;
    target += source;
  }
  if ((!!(status & 0x2)) && (target < 0) != (source < 0))
    status |= 0x2U;
  else
    status &= ~0x2U;
  if (target == 0 ? (!!(status & 0x4)) : 0)
    status |= 0x4U;
  else
    status &= ~0x4U;
  if (target < 0)
    status |= 0x8U;
  else
    status &= ~0x8U;
  *((int8 *)&reg[address2]) = target;
}