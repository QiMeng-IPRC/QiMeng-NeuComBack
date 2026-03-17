#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int u8;
typedef int i64;

/* Variables and functions */

int writeInt64(u8 *p, i64 i) {
  p[0] = (i >> 56) & 0xFF;
  p[1] = (i >> 48) & 0xFF;
  p[2] = (i >> 40) & 0xFF;
  p[3] = (i >> 32) & 0xFF;
  p[4] = (i >> 24) & 0xFF;
  p[5] = (i >> 16) & 0xFF;
  p[6] = (i >> 8) & 0xFF;
  p[7] = (i >> 0) & 0xFF;
  return 8;
}