#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int mySeed;

int myRand(void) {
  mySeed = mySeed * 1103515245 + 12345;
  return (mySeed >> 16) & 0x7FFF;
}