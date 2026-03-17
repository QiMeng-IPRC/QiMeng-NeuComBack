#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int c_codepoint_t;

/* Variables and functions */

int c_codepoint_to_utf8(c_codepoint_t c, char *outbuf) {
  int base, n, i;

  if (c < 0x80) {
    base = 0;
    n = 1;
  } else if (c < 0x800) {
    base = 192;
    n = 2;
  } else if (c < 0x10000) {
    base = 224;
    n = 3;
  } else if (c < 0x200000) {
    base = 240;
    n = 4;
  } else if (c < 0x4000000) {
    base = 248;
    n = 5;
  } else if (c < 0x80000000) {
    base = 252;
    n = 6;
  } else {
    return -1;
  }

  if (outbuf != NULL) {
    for (i = n - 1; i > 0; i--) {

      outbuf[i] = (c & 0x3f) | 0x80;
      c >>= 6;
    }

    outbuf[0] = c | base;
  }

  return n;
}