#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ c;
scalar_t__ d;
scalar_t__ e;
scalar_t__ result;

int test2(void) {
  result = c + d;
  if (result != e)
    return 1;
  return 0;
}