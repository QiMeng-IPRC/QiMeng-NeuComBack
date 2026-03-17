#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */

int u16_mbtouc_aux(unsigned int *puc, const unsigned short *s, size_t n) {
  unsigned short c = *s;

  if (c < 0xdc00) {
    if (n >= 2) {
      if (s[1] >= 0xdc00 && s[1] < 0xe000) {
        *puc = 0x10000 + ((c - 0xd800) << 10) + (s[1] - 0xdc00);
        return 2;
      }

    } else {

      *puc = 0xfffd;
      return n;
    }
  }

  *puc = 0xfffd;
  return 1;
}