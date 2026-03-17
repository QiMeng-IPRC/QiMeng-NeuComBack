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
  size_t a;
  size_t h;
  int flag_zero;
  int flag_sign;
  scalar_t__ flag_half;
  int /*<<< orphan*/ flag_parity_overflow;
  scalar_t__ flag_sub;
  scalar_t__ flag_carry;
};

/* Variables and functions */
int /*<<< orphan*/ *uint8_even_parity;
int used_cycles;
TYPE_1__ z80_state;

void z80_b4_or_a_h(void) {
  z80_state.a |= z80_state.h;
  {
    z80_state.flag_carry = 0;
    z80_state.flag_sub = 0;
    z80_state.flag_parity_overflow = uint8_even_parity[z80_state.a];
    z80_state.flag_half = 0;
    z80_state.flag_zero = (z80_state.a == 0x00);
    z80_state.flag_sign = (z80_state.a >> 7);
  };
  used_cycles += 4;
}