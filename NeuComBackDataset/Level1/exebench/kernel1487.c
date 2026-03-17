#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int uint32;
typedef scalar_t__ uint16;
struct TYPE_2__ {
  int vStatusReg;
  int *avReg;
  int *pvDreg;
  int vOverflow;
  int vSign;
  int vZero;
  int *pvSreg;
  int /*<<< orphan*/ *pvRomBank;
  int /*<<< orphan*/ vRomBuffer;
};

/* Variables and functions */
TYPE_1__ GSU;

void fx_from_r2(void) {
  if ((GSU.vStatusReg & 4096)) {
    uint32 v = GSU.avReg[2];
    GSU.avReg[15]++;
    (*GSU.pvDreg) = v;
    GSU.vOverflow = (v & 0x80) << 16;
    GSU.vSign = v;
    GSU.vZero = v;
    if (GSU.pvDreg == &GSU.avReg[14])
      GSU.vRomBuffer = GSU.pvRomBank[((uint32)((uint16)(GSU.avReg[14])))];
    GSU.vStatusReg &= ~(256 | 512 | 4096);
    GSU.pvDreg = GSU.pvSreg = &GSU.avReg[0];
  } else {
    GSU.pvSreg = &GSU.avReg[2];
    GSU.avReg[15]++;
  };
}