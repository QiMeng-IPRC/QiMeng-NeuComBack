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
  unsigned int size;
};
typedef TYPE_1__ Multiset;

/* Variables and functions */

unsigned int multiset_cardinality(unsigned int *cardinality,
                                  Multiset *multiset) {
  if (cardinality == NULL || multiset == NULL) {
    return 1;
  }

  *cardinality = multiset->size;

  return 0;
}