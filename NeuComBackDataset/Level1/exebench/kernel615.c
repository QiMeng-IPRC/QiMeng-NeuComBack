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
  int bit_left;
  int buf_ptr;
};
typedef TYPE_1__ BitStream;

/* Variables and functions */

void skip_put_bits(BitStream *s, int n) {
  s->bit_left -= n;
  s->buf_ptr -= 4 * (s->bit_left >> 5);
  s->bit_left &= 31;
}