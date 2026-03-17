#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ qdata;
struct TYPE_2__ {
  size_t _tail;
  size_t _head;
  int /*<<< orphan*/ *_data;
};

/* Variables and functions */
TYPE_1__ que;

void queue_pop(qdata *_data) {
  if (que._tail != que._head) {
    *_data = que._data[que._tail];
    que._tail = (que._tail + 1) % 90;
  }
}