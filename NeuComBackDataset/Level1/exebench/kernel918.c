#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef unsigned long bitarray;

/* Variables and functions */
int CHAR_BIT;

void bitarray_change_bit(bitarray *ba, size_t n) {
  ((ba)[1 + ((n) / (sizeof(bitarray) * CHAR_BIT))]) ^=
      ((1UL << ((n) % (sizeof(bitarray) * CHAR_BIT))));
}