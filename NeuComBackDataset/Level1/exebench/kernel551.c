#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */

char *strcatc(char *dst, char c) {
  size_t i = 0;

  while (dst[i] != '\0')
    i++;

  dst[i] = c;
  dst[i + 1] = '\0';

  return dst;
}