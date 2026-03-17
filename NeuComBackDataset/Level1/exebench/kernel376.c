#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int UINT8;
typedef int UINT32;

/* Variables and functions */

UINT8 *ne_stream4(UINT8 *dest, UINT32 num) {
  dest[0] = num & 0xFF;
  dest[1] = (num >> 8) & 0xFF;
  dest[2] = (num >> 16) & 0xFF;
  dest[3] = (num >> 24) & 0xFF;

  return dest + 4;
}