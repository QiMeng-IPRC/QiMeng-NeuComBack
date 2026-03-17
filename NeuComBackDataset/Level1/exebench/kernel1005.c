#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int BITS_PER_LONG;

void set_bit(int nr, volatile unsigned long *addr) {
  unsigned long mask = (1UL << ((nr) % BITS_PER_LONG));
  unsigned long *p = ((unsigned long *)addr) + ((nr) / BITS_PER_LONG);

  *p |= mask;
}