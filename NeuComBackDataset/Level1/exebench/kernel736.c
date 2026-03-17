#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
unsigned int *first_data_block;

unsigned int init_data_block(void) {
  unsigned int *bit_map = first_data_block;
  unsigned int bit_position = 0;
  unsigned int *bmap;
  unsigned int bit_pos = 0;
  int i;

  for (i = 0; i < (*(int *)first_data_block / 4); i++, bit_map += 1) {
    for (bit_pos = 0, bmap = bit_map; bit_pos < 32; bit_pos++, *bmap >>= 1) {
      if (!(*bmap & 0x1)) {
        *bit_map |= (1 << bit_pos);
        return (bit_position + bit_pos);
      }
    }
    bit_position += bit_pos;
  }

  return 0;
}