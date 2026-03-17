#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef scalar_t__ pblk;
struct TYPE_3__ {
  size_t size_this;
};
typedef TYPE_1__ _MallocBlock_t;

/* Variables and functions */

void blk_size_and_flags_set(_MallocBlock_t *pblk, size_t size_and_flags) {

  pblk->size_this = size_and_flags;
  (*((size_t *)((char *)(pblk) + (size_and_flags & ~((1 << 0) | (1 << 1))) -
                sizeof(size_t)))) = size_and_flags;
}