#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int u8;

/* Variables and functions */
int A;
int skip;

void op_ADX(u8 op, u8 arg) {
  A = A + (op & 0b1111);
  if (A >= 0x10) {
    A %= 0x10;
    skip = 1;
  }
}