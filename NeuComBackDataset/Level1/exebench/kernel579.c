#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int word_t;
typedef int word_offset_t;

/* Variables and functions */

char *_word_to_str(word_t word, char str[64 + 1]) {
  word_offset_t i;
  for (i = 0; i < 64; i++) {
    str[64 - i - 1] = ((word >> i) & (word_t)0x1) == 0 ? '0' : '1';
  }
  str[64] = '\0';
  return str;
}