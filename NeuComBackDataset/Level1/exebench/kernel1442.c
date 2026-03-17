#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ s_var_sys;

/* Variables and functions */

void cgi_sys_set_action(char *shm) {
  s_var_sys *sys_setting = (s_var_sys *)(shm + sizeof(int) * 3);

  *(int *)(shm + sizeof(int)) = 6;
  *(int *)(shm + sizeof(int) * 2) = 0;
}