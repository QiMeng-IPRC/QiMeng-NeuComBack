#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct test_result {
  int /*<<< orphan*/ test_count;
};

/* Variables and functions */

void test_begin(struct test_result *result) { result->test_count++; }