#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef size_t uint16;
typedef scalar_t__ int32;
typedef scalar_t__ int16;

/* Variables and functions */
int inst;
scalar_t__ *reg;

void Op3040(void) {
  register int16 source;
  register int32 target;
  register uint16 address2;
  source = (int16)reg[(inst & 7)];
  address2 = 8 + 0;
  target = source;
  reg[address2] = target;
}