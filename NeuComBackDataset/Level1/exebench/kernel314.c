#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int uint64;

/* Variables and functions */

size_t fmt_ulonglong(char *dest, uint64 i) {
  size_t len, len2;
  uint64 tmp = i;

  for (len = 1; tmp > 9; ++len)
    tmp /= 10;
  if (dest) {
    dest += len;
    len2 = len + 1;
    for (tmp = i; --len2; tmp /= 10)
      *--dest = (tmp % 10) + '0';
  }
  return len;
}