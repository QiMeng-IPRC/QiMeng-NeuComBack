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
  int next;
};
typedef TYPE_1__ slist_iterator_t;

/* Variables and functions */

int free_statelistiterator(slist_iterator_t *iter) {
  return ((iter)->next = 0, 0);
}