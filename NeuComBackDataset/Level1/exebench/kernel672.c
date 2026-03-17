#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct cpu_stat {
  scalar_t__ softirq;
  scalar_t__ irq;
  scalar_t__ iowait;
  scalar_t__ idle;
  scalar_t__ sys;
  scalar_t__ nice;
  scalar_t__ user;
};

/* Variables and functions */

void accumulate_cpu_stat(struct cpu_stat *const accum,
                         const struct cpu_stat *const current) {
  accum->user += current->user;
  accum->nice += current->nice;
  accum->sys += current->sys;
  accum->idle += current->idle;
  accum->iowait += current->iowait;
  accum->irq += current->irq;
  accum->softirq += current->softirq;
  return;
}