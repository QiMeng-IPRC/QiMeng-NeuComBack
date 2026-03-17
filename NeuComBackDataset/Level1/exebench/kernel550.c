#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct rat_ps {
  int ps_sd;
};

/* Variables and functions */

void rat_ps_set_sd(struct rat_ps *ps, int sd) {
  do {
  } while (0);

  if (ps)
    ps->ps_sd = sd;

  return;
}