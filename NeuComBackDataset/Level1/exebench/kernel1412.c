#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct event_config {
  int n_cpus_hint;
};

/* Variables and functions */

int event_config_set_num_cpus_hint(struct event_config *cfg, int cpus) {
  if (!cfg)
    return (-1);
  cfg->n_cpus_hint = cpus;
  return (0);
}