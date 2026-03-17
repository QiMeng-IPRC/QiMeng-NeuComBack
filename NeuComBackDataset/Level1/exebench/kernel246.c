#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ u16;

/* Variables and functions */
size_t id;
int /*<<< orphan*/ *map_rand_vars;

void map_set_rand_var(u16 val) { map_rand_vars[id] = val; }