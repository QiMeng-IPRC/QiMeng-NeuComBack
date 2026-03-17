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
  int h;
  int flag_parity_overflow;
  int flag_half;
  int flag_zero;
  int flag_sign;
  scalar_t__ flag_sub;
};

/* Variables and functions */
int used_cycles;
TYPE_1__ z80_state;

void z80_24_inc_h(void) {
  z80_state.h++;
  {
    z80_state.flag_sub = 0;
    z80_state.flag_parity_overflow = (z80_state.h == 0x80);
    z80_state.flag_half = ((z80_state.h & 0x0f) == 0x00);
    z80_state.flag_zero = (z80_state.h == 0x00);
    z80_state.flag_sign = z80_state.h >> 7;
  };
  used_cycles += 4;
}