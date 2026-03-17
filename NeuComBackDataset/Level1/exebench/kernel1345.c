#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  double SedRate;
};
typedef TYPE_1__ State;
typedef int /*<<< orphan*/ Deltas_state;

/* Variables and functions */

Deltas_state *deltas_set_sed_rate(Deltas_state *s, double rate) {
  State *p = (State *)s;

  p->SedRate = rate;
  return s;
}