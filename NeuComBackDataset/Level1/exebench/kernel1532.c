#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
unsigned int x_i;

unsigned int get_random(void) {
  unsigned int a = 1103515245;
  unsigned int c = 12345;
  unsigned int m = (unsigned int)0x1 << (unsigned int)31;
  x_i = (a * x_i + c) % m;
  return x_i;
}