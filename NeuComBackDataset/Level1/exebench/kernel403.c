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
  scalar_t__ num;
  scalar_t__ iteration_index;
};
typedef TYPE_1__ list;

/* Variables and functions */

void list_ReverseIterationReset(list *l) { l->iteration_index = l->num - 1; }