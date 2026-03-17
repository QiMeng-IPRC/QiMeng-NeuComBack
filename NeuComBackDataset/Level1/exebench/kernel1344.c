#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int p;
  int pc;
  int delay;
};
typedef TYPE_1__ e6502_t;

/* Variables and functions */

void op_38(e6502_t *c) {
  do {
    if (1)
      (c)->p |= (0x01);
    else
      (c)->p &= ~(0x01);
  } while (0);
  do {
    (c)->pc = ((c)->pc + (1)) & 0xffff;
    (c)->delay += (2);
  } while (0);
}