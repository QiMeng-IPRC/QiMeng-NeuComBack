#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  scalar_t__ size;
  scalar_t__ v;
};
struct TYPE_5__ {
  scalar_t__ p;
  scalar_t__ end;
};
typedef TYPE_1__ HASH_TABLE_ITER;
typedef TYPE_2__ HASH_TABLE;

/* Variables and functions */

void hashTableIterInit(HASH_TABLE_ITER *iter, const HASH_TABLE *table) {
  iter->p = table->v;
  iter->end = iter->p + table->size;
}