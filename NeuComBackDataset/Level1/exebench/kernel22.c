#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ num_err;
int /*<<< orphan*/ num_sev;
int /*<<< orphan*/ num_war;
scalar_t__ old_err;
scalar_t__ old_sev;
scalar_t__ old_war;

void restdia() {
  num_sev += old_sev;
  num_err += old_err;
  num_war += old_war;
}