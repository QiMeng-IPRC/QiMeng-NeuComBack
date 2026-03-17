#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef scalar_t__ uint8;
typedef int uint32;
struct TYPE_2__ {
  int vRomBankReg;
  int vStatusReg;
  scalar_t__ *avReg;
  scalar_t__ *pvSreg;
  scalar_t__ *pvDreg;
  int /*<<< orphan*/ *apvRomBank;
  int /*<<< orphan*/ pvRomBank;
};

/* Variables and functions */
TYPE_1__ GSU;

void fx_romb(void) {
  GSU.vRomBankReg = ((uint32)((uint8)((*GSU.pvSreg)))) & 0x7f;
  GSU.pvRomBank = GSU.apvRomBank[GSU.vRomBankReg];
  GSU.vStatusReg &= ~(256 | 512 | 4096);
  GSU.pvDreg = GSU.pvSreg = &GSU.avReg[0];
  GSU.avReg[15]++;
}