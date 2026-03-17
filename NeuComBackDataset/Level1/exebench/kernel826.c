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
  char *test_name_;
  int /*<<< orphan*/ *test_clnup_;
  int /*<<< orphan*/ test_func_;
  int /*<<< orphan*/ *test_setup_;
};

/* Variables and functions */
size_t CURR_TEST_;
TYPE_1__ *TESTS_;
int /*<<< orphan*/ *test_clnup_test_case;
int /*<<< orphan*/ test_func_fail_test_test_false;
int /*<<< orphan*/ test_func_fail_test_test_true;
int /*<<< orphan*/ test_func_pass_test;
int /*<<< orphan*/ test_func_test_case;
int /*<<< orphan*/ *test_setup_test_case;

void SetupTests(void) {
  do {
    TESTS_[CURR_TEST_].test_name_ = "pass_test";
    TESTS_[CURR_TEST_].test_setup_ = NULL;
    TESTS_[CURR_TEST_].test_func_ = test_func_pass_test;
    TESTS_[CURR_TEST_].test_clnup_ = NULL;
    CURR_TEST_++;
  } while (0);
  do {
    TESTS_[CURR_TEST_].test_name_ = "fail_test_test_true";
    TESTS_[CURR_TEST_].test_setup_ = NULL;
    TESTS_[CURR_TEST_].test_func_ = test_func_fail_test_test_true;
    TESTS_[CURR_TEST_].test_clnup_ = NULL;
    CURR_TEST_++;
  } while (0);
  do {
    TESTS_[CURR_TEST_].test_name_ = "fail_test_test_false";
    TESTS_[CURR_TEST_].test_setup_ = NULL;
    TESTS_[CURR_TEST_].test_func_ = test_func_fail_test_test_false;
    TESTS_[CURR_TEST_].test_clnup_ = NULL;
    CURR_TEST_++;
  } while (0);
  do {
    TESTS_[CURR_TEST_].test_name_ = "test_case";
    TESTS_[CURR_TEST_].test_setup_ = test_setup_test_case;
    TESTS_[CURR_TEST_].test_func_ = test_func_test_case;
    TESTS_[CURR_TEST_].test_clnup_ = test_clnup_test_case;
    CURR_TEST_++;
  } while (0);
}