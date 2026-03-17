#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef size_t uint32;
typedef scalar_t__ uint16;
struct TYPE_2__ {
  size_t *pvSreg;
  size_t *avReg;
  size_t *pvDreg;
  size_t vSign;
  size_t vZero;
  int vStatusReg;
  int /*<<< orphan*/ *pvRomBank;
  int /*<<< orphan*/ vRomBuffer;
};

/* Variables and functions */
TYPE_1__ GSU;

void fx_and_r2(void) {
  uint32 v = (*GSU.pvSreg) & GSU.avReg[2];
  GSU.avReg[15]++;
  (*GSU.pvDreg) = v;
  GSU.vSign = v;
  GSU.vZero = v;
  if (GSU.pvDreg == &GSU.avReg[14])
    GSU.vRomBuffer = GSU.pvRomBank[((uint32)((uint16)(GSU.avReg[14])))];
  GSU.vStatusReg &= ~(256 | 512 | 4096);
  GSU.pvDreg = GSU.pvSreg = &GSU.avReg[0];
}