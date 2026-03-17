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
  unsigned int high;
  unsigned int low;
};

/* Variables and functions */
TYPE_1__ bb_flips;
int *lsb_mask;
int *right_contiguous;
int *right_flip;

int TestFlips_bitboard_b2(unsigned int my_bits_high, unsigned int my_bits_low,
                          unsigned int opp_bits_high,
                          unsigned int opp_bits_low) {
  int flipped, contig;
  unsigned int t, fl;

  contig = right_contiguous[(opp_bits_low >> (9 + 1)) & 0x1F];
  fl = right_flip[contig] << (9 + 1);
  t = -(int)(my_bits_low & fl) >> 31;
  my_bits_low |= fl & t;
  flipped = contig & t;

  if (opp_bits_low & (1 << (9 + 8))) {
    if (opp_bits_low & (1 << (9 + 8 * 2))) {
      t = (opp_bits_high >> (9 + 8 * 3 - 32)) & 1;
      contig = 2 + t;
      t &= (opp_bits_high >> (9 + 8 * 4 - 32));
      contig += t;
      t &= (opp_bits_high >> (9 + 8 * 5 - 32));
      contig += t;
      t = lsb_mask[contig - 2] & 0x02020202u;
      if (my_bits_high & t) {
        my_bits_high |= t;
        my_bits_low |= (1 << (9 + 8)) | (1 << (9 + 8 * 2));
        flipped += contig;
      }
    } else {
      t = (my_bits_low >> (9 + 8 * 2)) & 1;
      my_bits_low |= t << (9 + 8);
      flipped += t;
    }
  };

  if (opp_bits_low & (1 << (9 + 9))) {
    if (opp_bits_low & (1 << (9 + 9 * 2))) {
      t = (opp_bits_high >> (9 + 9 * 3 - 32)) & 1;
      contig = 2 + t;
      t &= (opp_bits_high >> (9 + 9 * 4 - 32));
      contig += t;
      t &= (opp_bits_high >> (9 + 9 * 5 - 32));
      contig += t;
      t = lsb_mask[contig - 2] & 0x80402010u;
      if (my_bits_high & t) {
        my_bits_high |= t;
        my_bits_low |= (1 << (9 + 9)) | (1 << (9 + 9 * 2));
        flipped += contig;
      }
    } else {
      t = (my_bits_low >> (9 + 9 * 2)) & 1;
      my_bits_low |= t << (9 + 9);
      flipped += t;
    }
  };

  my_bits_low |= 0x00000200u;
  bb_flips.high = my_bits_high;
  bb_flips.low = my_bits_low;
  return flipped;
}