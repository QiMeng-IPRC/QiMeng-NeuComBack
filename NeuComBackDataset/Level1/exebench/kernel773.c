#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct linkedlist {
  int /*<<< orphan*/ first;
  int /*<<< orphan*/ iter;
};

/* Variables and functions */

void linkedlist_iterate(struct linkedlist *l) {
  if (l) {
    l->iter = l->first;
  }
}