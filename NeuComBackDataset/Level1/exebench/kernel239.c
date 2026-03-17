#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ Word32;

/* Variables and functions */

Word32 pseudonoise(Word32 *shift_reg, Word32 no_bits) {
  Word32 noise_bits, Sn, i;
  Word32 s_reg;

  s_reg = *shift_reg;
  noise_bits = 0;

  for (i = 0; i < no_bits; i++) {

    Sn = s_reg & 0x00000001L;

    if (s_reg & 0x10000000L) {
      Sn = Sn ^ 0x1L;
    } else {
      Sn = Sn ^ 0x0L;
    }
    noise_bits = (noise_bits << 1) | (s_reg & 1);
    s_reg = s_reg >> 1;

    if (Sn & 1) {
      s_reg = s_reg | 0x40000000L;
    }
  }
  *shift_reg = s_reg;
  return noise_bits;
}