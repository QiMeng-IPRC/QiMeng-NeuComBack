#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ debt_motor_left;
scalar_t__ motor_left_dir;
int /*<<< orphan*/ odom_ticks_left;

void intr_left_encoder() {
  odom_ticks_left++;
  debt_motor_left -= motor_left_dir;
}