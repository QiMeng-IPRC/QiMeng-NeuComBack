#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ mach_port_t;

/* Variables and functions */
int /*<<< orphan*/ master_host_port;

void panic_init(mach_port_t port) { master_host_port = port; }