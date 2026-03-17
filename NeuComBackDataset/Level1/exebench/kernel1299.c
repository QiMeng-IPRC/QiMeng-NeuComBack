#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct radix_tree_iter {
  unsigned long next_index;
  scalar_t__ index;
};

/* Variables and functions */

void **radix_tree_iter_init(struct radix_tree_iter *iter, unsigned long start) {
# 331 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/liweiliv/history/refs/heads/master/sql/radix-tree.h"
  iter->index = 0;
  iter->next_index = start;
  return NULL;
}