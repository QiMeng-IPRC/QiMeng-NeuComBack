#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ syscall_id;
typedef int /*<<< orphan*/ ddword;

/* Variables and functions */
int millis_ellapsed;

int on_tick(syscall_id id, ddword arg1, ddword arg2, ddword arg3) {

  millis_ellapsed += 55;

  return 0;
}