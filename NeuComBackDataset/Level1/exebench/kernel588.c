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
  int input_buffer_bitaccumulator;
  int input_buffer;
};
typedef TYPE_1__ alac_file;

/* Variables and functions */

void unreadbits(alac_file *alac, int bits) {
  int new_accumulator = (alac->input_buffer_bitaccumulator - bits);

  alac->input_buffer += (new_accumulator >> 3);

  alac->input_buffer_bitaccumulator = (new_accumulator & 7);
  if (alac->input_buffer_bitaccumulator < 0)
    alac->input_buffer_bitaccumulator *= -1;
}