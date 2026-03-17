#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
size_t block_depth;
scalar_t__ *block_stack;
scalar_t__ num_blocks;

void SET_pop_block() {
  if (block_stack && block_depth) {
    if (block_stack[--block_depth] == 0 && block_depth) {

      num_blocks = block_stack[--block_depth];
    }
  }
}