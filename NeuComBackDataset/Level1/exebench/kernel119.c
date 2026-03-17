#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int /*<<< orphan*/ flags;
  scalar_t__ int64_value;
};
typedef TYPE_1__ value_t;

/* Variables and functions */
int /*<<< orphan*/ flags_empty;

void zero_value(value_t *val) {

  val->int64_value = 0;
  val->flags = flags_empty;
}