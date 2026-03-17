#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ llamaos_umask_t;

/* Variables and functions */
int /*<<< orphan*/ llamaos_umask;

void register_llamaos_umask(llamaos_umask_t func) { llamaos_umask = func; }