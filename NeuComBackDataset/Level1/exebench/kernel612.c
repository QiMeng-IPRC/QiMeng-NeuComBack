#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ sasl_mutex_unlock_t;
typedef int /*<<< orphan*/ sasl_mutex_lock_t;
typedef int /*<<< orphan*/ sasl_mutex_free_t;
typedef int /*<<< orphan*/ sasl_mutex_alloc_t;
struct TYPE_2__ {
  int /*<<< orphan*/ *free;
  int /*<<< orphan*/ *unlock;
  int /*<<< orphan*/ *lock;
  int /*<<< orphan*/ *alloc;
};

/* Variables and functions */
TYPE_1__ _sasl_mutex_utils;

void sasl_set_mutex(sasl_mutex_alloc_t *n, sasl_mutex_lock_t *l,
                    sasl_mutex_unlock_t *u, sasl_mutex_free_t *d) {
  _sasl_mutex_utils.alloc = n;
  _sasl_mutex_utils.lock = l;
  _sasl_mutex_utils.unlock = u;
  _sasl_mutex_utils.free = d;
}