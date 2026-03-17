#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct nsxml_switch_option_result {
  int /*<<< orphan*/ result_type;
  scalar_t__ is_set;
};

/* Variables and functions */
int /*<<< orphan*/ nsxml_result_type_switch;

void nsxml_switch_option_result_init(
    struct nsxml_switch_option_result *option) {
  option->is_set = 0;
  option->result_type = nsxml_result_type_switch;
}