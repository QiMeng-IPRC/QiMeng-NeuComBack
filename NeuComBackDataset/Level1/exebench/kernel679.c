#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ timer_callback_t;

/* Variables and functions */
int /*<<< orphan*/ callback_func;
scalar_t__ timer_value;

void init_timer(timer_callback_t callback) {
  timer_value = 0;
  callback_func = callback;
}