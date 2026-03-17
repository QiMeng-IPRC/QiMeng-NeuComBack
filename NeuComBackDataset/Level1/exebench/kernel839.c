#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef size_t uint16;
typedef scalar_t__ int16;

/* Variables and functions */
scalar_t__ *areg;
int inst;
int /*<<< orphan*/ *reg;
int status;

void Op3808(void) {
  register int16 source;
  register int16 target;
  register uint16 address2;
  source = (int16)areg[(inst & 7)];
  address2 = 4;
  target = source;
  if (target) {
    status &= ~0xfU;
    if (target < 0)
      status |= 0x8U;
  } else {
    status |= 0x4U;
    status &= ~0xaU;
  };
  *((int16 *)&reg[address2]) = target;
}