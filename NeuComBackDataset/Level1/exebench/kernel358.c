#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef size_t uint16;
typedef int int8;

/* Variables and functions */
int inst;
scalar_t__ *reg;
int status;

void Ope500(void) {
  register int8 source;
  register int8 target;
  register uint16 address2;
  source = 2;
  address2 = (inst & 7);
  target = (int8)reg[address2];
  if ((source & 0x3f) > 0) {
    int8 vmask = ((int8)0x80) >> (source & 0x3f);
    if (((vmask & target) != 0) && ((vmask & target) != vmask))
      status |= 0x2U;
    else
      status &= ~0x2U;
    target <<= (source & 0x3f) - 1;
    if (target & 0x80)
      status |= 0x11U;
    else
      status &= ~0x11U;
    target <<= 1;
    if (target) {
      status &= ~0xcU;
      if (target < 0)
        status |= 0x8U;
    } else {
      status |= 0x4U;
      status &= ~0x8U;
    };
  } else {
    if (target) {
      status &= ~0xfU;
      if (target < 0)
        status |= 0x8U;
    } else {
      status |= 0x4U;
      status &= ~0xaU;
    };
  }
  *((int8 *)&reg[address2]) = target;
}