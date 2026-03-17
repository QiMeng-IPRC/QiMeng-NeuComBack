#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int sepgsql_mode;

int sepgsql_set_mode(int new_mode) {
  int old_mode = sepgsql_mode;

  sepgsql_mode = new_mode;

  return old_mode;
}