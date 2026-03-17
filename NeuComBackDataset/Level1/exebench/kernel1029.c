#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ PQOS_INTER_OS;
int /*<<< orphan*/ sel_interface;

void selfn_iface_os(const char *arg) {
  ((void)(arg));
  sel_interface = PQOS_INTER_OS;
}