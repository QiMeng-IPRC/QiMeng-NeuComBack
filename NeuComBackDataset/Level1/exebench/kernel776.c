#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ announcement_observer;

/* Variables and functions */
int /*<<< orphan*/ observer_callback;

void announcement_register_observer_callback(announcement_observer callback) {
  observer_callback = callback;
}