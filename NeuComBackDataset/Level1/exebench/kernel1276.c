#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int TreeElement;

/* Variables and functions */

void set_tree_single(TreeElement *tree, TreeElement code) {
  tree[0] =
      (TreeElement)code | (TreeElement)(1 << (sizeof(TreeElement) * 8 - 1));
}