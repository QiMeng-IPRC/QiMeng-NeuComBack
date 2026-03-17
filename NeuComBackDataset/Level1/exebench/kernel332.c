#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ SIGUSR1;
int /*<<< orphan*/
alarm(int);
unsigned long iterations;
unsigned long iterations_prev;
int /*<<< orphan*/
kill(int /*<<< orphan*/, int /*<<< orphan*/);
int /*<<< orphan*/
printf(char *, unsigned long);
scalar_t__ timeout;

void sigalrm_handler(int junk) {
  unsigned long i = iterations;

  printf("%ld\n", i - iterations_prev);
  iterations_prev = i;

  if (--timeout == 0) {
    kill(0, SIGUSR1);
  }

  alarm(1);
}