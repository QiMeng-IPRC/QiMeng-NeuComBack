#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int F;
int IY;
int *ram;

int op_tb3iyd(int data) {

  F &= ~(2 | 128);
  F |= 16;
  (*(ram + IY + data) & 8) ? (F &= ~(64 | 4)) : (F |= (64 | 4));
  return (20);
}