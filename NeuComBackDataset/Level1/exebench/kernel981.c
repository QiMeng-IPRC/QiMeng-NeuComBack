#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ global_action;
int global_bit;
int /*<<< orphan*/ global_done;
int /*<<< orphan*/ global_peer;
int /*<<< orphan*/ global_shift;
int /*<<< orphan*/ reduce_action;
int /*<<< orphan*/ reduce_done;
int /*<<< orphan*/ reduce_peer;
int /*<<< orphan*/ reduce_shift;

void reduce_begin(void) {
  global_bit = 1;
  global_action = reduce_action;
  global_peer = reduce_peer;
  global_done = reduce_done;
  global_shift = reduce_shift;
}