#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_7__ TYPE_3__;
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
typedef int sign_state_t;
struct TYPE_5__ {
  int id;
  int /*<<< orphan*/ str;
};
struct TYPE_6__ {
  TYPE_1__ state;
};
struct TYPE_7__ {
  TYPE_2__ signature;
};
typedef TYPE_3__ mediacheck_t;

/* Variables and functions */
int /*<<< orphan*/ *sign_states;

void set_signature_state(mediacheck_t *media, sign_state_t state) {
  media->signature.state.id = state;
  if (state < sizeof sign_states / sizeof *sign_states) {
    media->signature.state.str = sign_states[state];
  }
}