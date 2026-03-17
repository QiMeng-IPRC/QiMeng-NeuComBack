#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
size_t max_cmdline_length;

int linenoiseSetMaxLineLen(size_t len) {
  if (len < 64) {
    return -1;
  }
  max_cmdline_length = len;
  return 0;
}