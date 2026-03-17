#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int u32;

/* Variables and functions */

void mem_clear_32(u32 *ptr, u32 size) {
  size >>= 2;
  while (size--)
    *ptr++ = 0;
}