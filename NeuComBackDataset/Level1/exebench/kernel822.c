#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  int /*<<< orphan*/ *input_manager_manager;
};
typedef int /*<<< orphan*/ FtkInputMethodManager;

/* Variables and functions */
TYPE_1__ g_globals;

void ftk_set_input_method_manager(
    FtkInputMethodManager *input_manager_manager) {
  g_globals.input_manager_manager = input_manager_manager;

  return;
}