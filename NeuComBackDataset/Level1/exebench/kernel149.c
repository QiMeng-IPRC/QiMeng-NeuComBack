#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int _seed;

unsigned int __attribute__((noinline)) RANDOM(void) {
  return _seed = 0x41c64e6dUL * _seed + 12345UL;
}