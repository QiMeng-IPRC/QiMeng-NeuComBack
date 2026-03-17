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
  int /*<<< orphan*/ bc;
};

/* Variables and functions */
int used_cycles;
TYPE_1__ z80_state;

void z80_03_inc_bc(void) {
  z80_state.bc++;
  used_cycles += 6;
}