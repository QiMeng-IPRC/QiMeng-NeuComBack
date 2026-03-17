#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef size_t uint8;
struct TYPE_3__ {
  size_t read_bits;
  scalar_t__ current;
};
typedef TYPE_1__ bit_buffer;

/* Variables and functions */

void skip_bits(bit_buffer *bb, size_t nbits) {
  bb->current = bb->current + (nbits + bb->read_bits) / 8;
  bb->read_bits = (uint8)((bb->read_bits + nbits) % 8);
}