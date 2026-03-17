#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int *b;
};
struct TYPE_4__ {
  TYPE_1__ regs;
};

/* Variables and functions */
size_t AH;
size_t AL;
TYPE_2__ I;
int nec_ICount;

void i_cbw(void) {
  I.regs.b[AH] = (I.regs.b[AL] & 0x80) ? 0xff : 0;
  nec_ICount -= 1;
}