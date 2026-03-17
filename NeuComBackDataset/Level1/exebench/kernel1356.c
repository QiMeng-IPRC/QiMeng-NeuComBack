#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct buffer {
  size_t reserved;
  scalar_t__ data;
};

/* Variables and functions */
scalar_t__ realloc(scalar_t__, size_t);

int buffer_grow(struct buffer *self, size_t new_size) {
  if (self->reserved >= new_size)
    return 0;

  self->reserved += new_size * 2;

  self->data = realloc(self->data, self->reserved);

  return self->data != 0 ? 0 : -1;
}