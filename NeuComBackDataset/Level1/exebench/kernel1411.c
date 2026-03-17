#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ d0_ev;
scalar_t__ d0_req_up;
scalar_t__ d0_val;
scalar_t__ d0_val_t;

void update_d0(void) {

  {
    if ((int)d0_val != (int)d0_val_t) {
      d0_val = d0_val_t;
      d0_ev = 0;
    } else {
    }
    d0_req_up = 0;

    return;
  }
}