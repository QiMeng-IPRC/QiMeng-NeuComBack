#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int wordcount_t;
typedef int /*<<< orphan*/ uECC_word_t;

/* Variables and functions */

void vli_set(uECC_word_t *dest, const uECC_word_t *src) {
  wordcount_t i;
  for (i = 0; i < 8; ++i) {
    dest[i] = src[i];
  }
}