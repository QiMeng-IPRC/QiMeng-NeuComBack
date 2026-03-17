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
  int /*<<< orphan*/ c;
  int /*<<< orphan*/ e;
};

/* Variables and functions */
int used_cycles;
TYPE_1__ z80_state;

void z80_59_ld_e_c(void) {
  z80_state.e = z80_state.c;
  used_cycles += 4;
}