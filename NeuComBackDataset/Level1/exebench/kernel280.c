#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ u16;
typedef size_t i64;

/* Variables and functions */

i64 uni_copy(u16 *dst, u16 *src, i64 n) {
  i64 i;
  for (i = 0; src[i] && (i < (n - 1)); i++)
    dst[i] = src[i];
  dst[i] = 0;
  return i;
}