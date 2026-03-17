#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  int /*<<< orphan*/ head;
};
struct TYPE_5__ {
  int /*<<< orphan*/ next;
};
typedef TYPE_1__ KeylistIterator;
typedef TYPE_2__ Keylist;

/* Variables and functions */

void keylist_rewind(Keylist *keylist, KeylistIterator *iter) {
  iter->next = keylist->head;
}