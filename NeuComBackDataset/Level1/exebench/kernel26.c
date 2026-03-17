#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  size_t size;
  size_t size_mask;
  scalar_t__ write_ptr;
  scalar_t__ read_ptr;
};
typedef TYPE_1__ ringbuffer_t;

/* Variables and functions */

void ringbuffer_reset_size(ringbuffer_t *rb, size_t sz) {
  rb->size = sz;
  rb->size_mask = rb->size;
  rb->size_mask -= 1;
  rb->read_ptr = 0;
  rb->write_ptr = 0;
}