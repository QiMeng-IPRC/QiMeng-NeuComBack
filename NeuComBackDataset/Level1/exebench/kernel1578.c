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
  int /*<<< orphan*/ is_greedy;
};
typedef TYPE_1__ apse_t;
typedef int /*<<< orphan*/ apse_bool_t;

/* Variables and functions */

void apse_set_greedy(apse_t *ap, apse_bool_t greedy) { ap->is_greedy = greedy; }