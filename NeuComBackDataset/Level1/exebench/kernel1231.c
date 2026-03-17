#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int UCHAR;
typedef scalar_t__ BOOL;

/* Variables and functions */
int PM4;
int PMC4;
int PU4;

void PORT_ChangeP42Input(BOOL enablePU) {
  if (enablePU) {
    PU4 |= 0x04;
  } else {
    PU4 &= (UCHAR)~0x04;
  }
  PM4 |= 0x04;
  PMC4 &= (UCHAR)~0x04;
}