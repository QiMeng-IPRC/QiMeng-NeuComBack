#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ uint64;
struct TYPE_3__ {
  int /*<<< orphan*/ value;
};
typedef TYPE_1__ atomic_uint64;

/* Variables and functions */

void atomic64_write(atomic_uint64 *var, uint64 val) { var->value = val; }