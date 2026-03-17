#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ type8;

/* Variables and functions */
int /*<<< orphan*/ *arg1;
int /*<<< orphan*/ *arg2;

void swap_args(void) {
  type8 *tmp;

  tmp = arg1;
  arg1 = arg2;
  arg2 = tmp;
}