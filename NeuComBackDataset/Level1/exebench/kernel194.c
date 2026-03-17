#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ *TOSH_sched_free;
scalar_t__ *TOSH_sched_full;

void TOSH_sched_init(void) {
  int i;
  for (i = 0; i < 3; i++) {
    TOSH_sched_free[i] = 0;
    TOSH_sched_full[i] = 0;
  }
}