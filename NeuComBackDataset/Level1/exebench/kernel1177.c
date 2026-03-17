#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *gpio;
int /*<<< orphan*/
usleep(int);

void intro_0() {
  int g;
  g = 18;
  *(gpio + 10) = 1 << g;
  usleep(253);
  *(gpio + 7) = 1 << g;
  usleep(970);
}