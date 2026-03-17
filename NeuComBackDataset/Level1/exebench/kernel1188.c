#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct buffer {
  size_t size;
  size_t len;
};

/* Variables and functions */

void buffer_setlen(struct buffer *b, size_t len) {

  if (!b->size)
    return;

  if (len >= b->size)
    len = b->size - 1;
  b->len = len;
}