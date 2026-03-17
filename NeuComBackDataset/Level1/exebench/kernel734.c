#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ mps_lib_assert_fail_t;

/* Variables and functions */
int /*<<< orphan*/ mps_lib_assert_handler;

mps_lib_assert_fail_t
mps_lib_assert_fail_install(mps_lib_assert_fail_t handler) {
  mps_lib_assert_fail_t old_handler = mps_lib_assert_handler;
  mps_lib_assert_handler = handler;
  return old_handler;
}