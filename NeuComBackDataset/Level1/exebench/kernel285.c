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
  int cnt;
  int head;
  int size;
};
typedef TYPE_1__ rbuff_t;

/* Variables and functions */

int rbuff_remove_left(rbuff_t *rb, int n) {
  int head;

  if (n < 0 || rb->cnt < n) {
    return 0;
  }

  head = rb->head + n;
  if (head >= rb->size) {
    head = head - rb->size;
  }
  rb->head = head;
  rb->cnt -= n;

  return n;
}