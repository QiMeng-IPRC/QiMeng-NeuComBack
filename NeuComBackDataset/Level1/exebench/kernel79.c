#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ getpid();
long rnd_seed;
scalar_t__ time(int /*<<< orphan*/ *);

long rnd(void) {
  long hi, lo;

  if (!rnd_seed || rnd_seed == 2147483647L)

    rnd_seed = ((long)getpid() << 16) ^ (long)time(NULL);

  hi = rnd_seed / 127773L;
  lo = rnd_seed % 127773L;
  if ((rnd_seed = 16807L * lo - 2836L * hi) <= 0)
    rnd_seed += 2147483647L;

  return rnd_seed;
}