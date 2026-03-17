#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int A;
int F;
scalar_t__ *parrity;

int op_rrra(void) {
  register int old_c_flag;

  old_c_flag = F & 1;
  (A & 1) ? (F |= 1) : (F &= ~1);
  A >>= 1;
  if (old_c_flag)
    A |= 128;
  F &= ~(16 | 2);
  (A) ? (F &= ~64) : (F |= 64);
  (A & 128) ? (F |= 128) : (F &= ~128);
  (parrity[A]) ? (F &= ~4) : (F |= 4);
  return (8);
}