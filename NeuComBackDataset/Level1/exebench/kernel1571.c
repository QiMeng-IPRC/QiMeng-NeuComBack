#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ ValDestroyFunc;
struct TYPE_3__ {
  int /*<<< orphan*/ valDestroyFunc;
};
typedef TYPE_1__ HashTable;

/* Variables and functions */

ValDestroyFunc hashtable_set_value_destroy_func(HashTable *h,
                                                ValDestroyFunc d) {
  ValDestroyFunc r = h->valDestroyFunc;
  h->valDestroyFunc = d;
  return r;
}