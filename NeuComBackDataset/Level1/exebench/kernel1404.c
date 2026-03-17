#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef enum lzma_state { ____Placeholder_lzma_state } lzma_state;

/* Variables and functions */
int STATE_LIT_SHORTREP;
int STATE_NONLIT_REP;

void lzma_state_short_rep(enum lzma_state *state) {
  *state = *state < 7 ? STATE_LIT_SHORTREP : STATE_NONLIT_REP;
}