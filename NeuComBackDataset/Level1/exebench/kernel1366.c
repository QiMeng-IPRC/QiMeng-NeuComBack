#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
char *test_read_buf;

void testReadFromFile(char c) {
  static int test_read_buf_ind = 0;
  test_read_buf[test_read_buf_ind++] = c;
  test_read_buf[test_read_buf_ind] = 0;
}