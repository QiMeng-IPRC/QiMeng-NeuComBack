#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int /*<<< orphan*/ X;
  int /*<<< orphan*/ A;
};
typedef TYPE_1__ bpf_state_t;

/* Variables and functions */

unsigned int bpf_alu_div_x(bpf_state_t *state, unsigned char jt,
                           unsigned char jf, unsigned long k) {
  state->A /= state->X;
  return ~0;
}