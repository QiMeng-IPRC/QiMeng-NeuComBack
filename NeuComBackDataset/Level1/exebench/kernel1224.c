#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int u8;
typedef int u64;

/* Variables and functions */

void pb(u8 *to, u8 *from, u64 index) {

  u8 mask = (0x01 << (7 - index));

  u8 put = (*from);
  put <<= (7 - index);

  (*to) = (*to & ~mask) | (put & mask);

  return;
}