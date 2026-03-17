#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/
close(int);
int *joyfd;

void close_realjoy(void) {
  int i;
  for (i = 0; i < 2; i++) {
    if (joyfd[i] != -1)
      close(joyfd[i]);
    joyfd[i] = -1;
  }
}