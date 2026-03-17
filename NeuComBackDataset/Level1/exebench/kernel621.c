#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct pcg_state_setseq_128 {
  int state;
  int inc;
};

/* Variables and functions */
int PCG_DEFAULT_MULTIPLIER_128;

void pcg_setseq_128_step_r(struct pcg_state_setseq_128 *rng) {
  rng->state = rng->state * PCG_DEFAULT_MULTIPLIER_128 + rng->inc;
}