#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */

unsigned long getnum(const char *str, size_t len, int base, int *err) {
  unsigned long result = 0;

  while (len && *str == ' ') {
    str++;
    len--;
  }
  while (len && *str >= '0' && (*str - '0') < base) {
    result = base * result + *str++ - '0';
    len--;
  }
  while (len && *str == ' ') {
    str++;
    len--;
  }
  if (len) {
    *err = len;
  }
  return result;
}