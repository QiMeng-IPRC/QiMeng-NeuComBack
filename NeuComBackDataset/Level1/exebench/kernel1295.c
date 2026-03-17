#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ t_pusb_options;

/* Variables and functions */
int /*<<< orphan*/ *pusb_opts;

void pusb_log_init(t_pusb_options *opts) { pusb_opts = opts; }