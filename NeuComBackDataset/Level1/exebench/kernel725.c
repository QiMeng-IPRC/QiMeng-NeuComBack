#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int word_t;

/* Variables and functions */

void set_bit(word_t *w, int i, int v) {
  int wi = (int)i / (8 * sizeof(word_t));
  int oi = i % (8 * sizeof(word_t));
  if (v)
    w[wi] |= ((word_t)1) << oi;
  else
    w[wi] &= ~(((word_t)1) << oi);
}