#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct rbtree {
  int /*<<< orphan*/ free;
  int /*<<< orphan*/ alloc;
};
typedef int /*<<< orphan*/ rb_free_func_t;
typedef int /*<<< orphan*/ rb_alloc_func_t;

/* Variables and functions */

void rb_set_allocator(struct rbtree *rb, rb_alloc_func_t alloc,
                      rb_free_func_t free) {
  rb->alloc = alloc;
  rb->free = free;
}