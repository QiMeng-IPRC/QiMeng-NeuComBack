#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  long val_number;
};
struct TYPE_5__ {
  TYPE_1__ value;
  int /*<<< orphan*/ isnumber;
};
typedef TYPE_2__ shell_value;

/* Variables and functions */

int shell_value_get_number(shell_value *value, long int *number) {
  if (!value->isnumber)
    return 30 + 6;
  *number = value->value.val_number;
  return 0;
}