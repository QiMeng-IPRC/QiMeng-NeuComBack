#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ tnode_t;
typedef int /*<<< orphan*/ compops_t;
struct TYPE_3__ {
  int collect;
};
typedef TYPE_1__ cccsp_preallocate_t;

/* Variables and functions */

int guppy_lpreallocate_condopnode(compops_t *cops, tnode_t *node,
                                  cccsp_preallocate_t *cpa) {
  cpa->collect += 2;
  return 1;
}