#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct f2fs_gc_kthread {
  unsigned int min_sleep_time;
  unsigned int no_gc_sleep_time;
  unsigned int max_sleep_time;
};

/* Variables and functions */

void decrease_sleep_time(struct f2fs_gc_kthread *gc_th, unsigned int *wait) {
  unsigned int min_time = gc_th->min_sleep_time;

  if (*wait == gc_th->no_gc_sleep_time)
    *wait = gc_th->max_sleep_time;

  if ((long long)*wait - (long long)min_time < (long long)min_time)
    *wait = min_time;
  else
    *wait -= min_time;
}