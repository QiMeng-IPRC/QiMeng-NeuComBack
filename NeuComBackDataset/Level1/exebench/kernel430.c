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
  int /*<<< orphan*/ ppc;
};
typedef TYPE_1__ dsp56k_core;
typedef int /*<<< orphan*/ UINT8;
typedef int /*<<< orphan*/ UINT16;

/* Variables and functions */
int /*<<< orphan*/ PC;

size_t dsp56k_op_jmp(dsp56k_core *cpustate, const UINT16 op, const UINT16 op2,
                     UINT8 *cycles) {
  cpustate->ppc = PC;
  PC = op2;

  cycles += 4;
  return 0;
}