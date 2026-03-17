#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct page {
  unsigned long flags;
};

/* Variables and functions */

__attribute__((always_inline)) void set_page_node(struct page *page,
                                                  unsigned long node) {
  page->flags &= ~(((1UL << 6) - 1)
                   << ((((sizeof(unsigned long) * 8) - 0) - 6) * (6 != 0)));
  page->flags |= (node & ((1UL << 6) - 1))
                 << ((((sizeof(unsigned long) * 8) - 0) - 6) * (6 != 0));
}