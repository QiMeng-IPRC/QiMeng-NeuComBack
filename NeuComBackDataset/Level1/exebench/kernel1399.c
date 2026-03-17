#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ boot_status_e;

/* Variables and functions */
int /*<<< orphan*/ g_boot_status;

void boot_status_set(boot_status_e status) { g_boot_status = status; }