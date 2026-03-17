#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct extent_io_tree {
  int dummy;
};
struct extent_buffer {
  int flags;
};

/* Variables and functions */

int clear_extent_buffer_uptodate(struct extent_io_tree *tree,
                                 struct extent_buffer *eb) {
  eb->flags &= ~(1 << 2);
  return 0;
}