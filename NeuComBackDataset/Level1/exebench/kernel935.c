#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ llamaos_libc_open_t;

/* Variables and functions */
int /*<<< orphan*/ llamaos_libc_open;

void register_llamaos_libc_open(llamaos_libc_open_t libc_open) {
  llamaos_libc_open = libc_open;
}