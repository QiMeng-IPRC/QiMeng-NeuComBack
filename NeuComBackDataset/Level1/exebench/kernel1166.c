#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *rng;

unsigned int urand(void) {
  unsigned int t = (rng[0] ^ (rng[0] >> 7));
  rng[0] = rng[1];
  rng[1] = rng[2];
  rng[2] = rng[3];
  rng[3] = rng[4];
  rng[4] = (rng[4] ^ (rng[4] << 6)) ^ (t ^ (t << 13));
  return (rng[1] + rng[1] + 1) * rng[4];
}