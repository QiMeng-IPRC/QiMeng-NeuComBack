#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ PLC_ANSWER_ERROR_OFR_SP;
int /*<<< orphan*/ *plcvm_ram;
size_t plcvm_sfp;
size_t plcvm_sp;
int /*<<< orphan*/ plcvm_stat;

void cb_not(void) {
  if (plcvm_sp < plcvm_sfp) {
    plcvm_ram[plcvm_sp] = ~plcvm_ram[plcvm_sp];
  } else {
    plcvm_stat = PLC_ANSWER_ERROR_OFR_SP;
  }
}