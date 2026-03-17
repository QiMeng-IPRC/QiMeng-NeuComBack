#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct bomp_barrier {
  int max;
  scalar_t__ counter;
  scalar_t__ cycle;
};

/* Variables and functions */

void bomp_barrier_init(struct bomp_barrier *barrier, int count) {
  barrier->max = count;
  barrier->cycle = 0;
  barrier->counter = 0;
}