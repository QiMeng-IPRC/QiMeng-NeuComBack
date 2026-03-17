#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ W_TRUE;
int /*<<< orphan*/ is_usrmode;

void _wind_thread_set_usrmode(void) { is_usrmode = W_TRUE; }