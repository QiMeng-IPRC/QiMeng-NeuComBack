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
  int /*<<< orphan*/ b;
  int /*<<< orphan*/ d;
};

/* Variables and functions */
int used_cycles;
TYPE_1__ z80_state;

void z80_50_ld_d_b(void) {
  z80_state.d = z80_state.b;
  used_cycles += 4;
}