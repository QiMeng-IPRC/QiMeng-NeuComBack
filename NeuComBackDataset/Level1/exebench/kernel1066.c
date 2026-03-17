#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef char u8;

/* Variables and functions */

int _sputc(char *out, int n, int c) {
  if (c == '\0' || n <= 0)
    return 0;
  else {
    *out = (u8)c;
    return 1;
  }
}