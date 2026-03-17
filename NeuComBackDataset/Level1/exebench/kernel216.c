#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int C;
int F;
scalar_t__ *parrity;

int op_rrc(void) {
  register int old_c_flag;

  old_c_flag = F & 1;
  (C & 1) ? (F |= 1) : (F &= ~1);
  C >>= 1;
  if (old_c_flag)
    C |= 128;
  F &= ~(16 | 2);
  (C) ? (F &= ~64) : (F |= 64);
  (C & 128) ? (F |= 128) : (F &= ~128);
  (parrity[C]) ? (F &= ~4) : (F |= 4);
  return (8);
}