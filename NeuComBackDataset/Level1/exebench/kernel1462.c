#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  int vStatusReg;
  scalar_t__ *avReg;
  scalar_t__ *pvSreg;
  scalar_t__ *pvDreg;
  scalar_t__ vZero;
  scalar_t__ vSign;
};

/* Variables and functions */
TYPE_1__ GSU;

void fx_inc_r2(void) {
  GSU.avReg[2] += 1;
  GSU.vSign = GSU.avReg[2];
  GSU.vZero = GSU.avReg[2];
  GSU.vStatusReg &= ~(256 | 512 | 4096);
  GSU.pvDreg = GSU.pvSreg = &GSU.avReg[0];
  GSU.avReg[15]++;
}