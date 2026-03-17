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
  unsigned int flag;
};
typedef TYPE_1__ muggle_memory_pool_t;

/* Variables and functions */

void muggle_memory_pool_set_flag(muggle_memory_pool_t *pool,
                                 unsigned int flag) {
  pool->flag = flag;
}