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
typedef int int32;
struct TYPE_2__ {
  int *pvSreg;
  int vCarry;
  int vOverflow;
  int vSign;
  int vZero;
  int *avReg;
  int *pvDreg;
  int vStatusReg;
  int /*<<< orphan*/ *pvRomBank;
  int /*<<< orphan*/ vRomBuffer;
};

/* Variables and functions */
TYPE_1__ GSU;

void fx_adc_i8(void) {
  int32 s =
      ((int32)((uint16)((*GSU.pvSreg)))) + 8 + ((int32)((uint16)(GSU.vCarry)));
  GSU.vCarry = s >= 0x10000;
  GSU.vOverflow = ~((*GSU.pvSreg) ^ 8) & (8 ^ s) & 0x8000;
  GSU.vSign = s;
  GSU.vZero = s;
  GSU.avReg[15]++;
  (*GSU.pvDreg) = s;
  if (GSU.pvDreg == &GSU.avReg[14])
    GSU.vRomBuffer = GSU.pvRomBank[((uint32)((uint16)(GSU.avReg[14])))];
  GSU.vStatusReg &= ~(256 | 512 | 4096);
  GSU.pvDreg = GSU.pvSreg = &GSU.avReg[0];
}