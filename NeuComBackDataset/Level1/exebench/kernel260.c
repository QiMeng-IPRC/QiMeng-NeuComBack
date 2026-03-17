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
  unsigned int maxsize;
};
typedef TYPE_1__ queue_queue;

/* Variables and functions */

void queue_set_maxsize(queue_queue *q, unsigned int m) {
  if (!q)
    return;
  q->maxsize = m;
}