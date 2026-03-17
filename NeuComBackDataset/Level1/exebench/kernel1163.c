#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct equeue_event {
  int id;
};
struct TYPE_3__ {
  unsigned int npw2;
};
typedef TYPE_1__ equeue_t;

/* Variables and functions */

void equeue_incid(equeue_t *q, struct equeue_event *e) {
  e->id += 1;
  if (((unsigned)e->id << q->npw2) == 0) {
    e->id = 1;
  }
}