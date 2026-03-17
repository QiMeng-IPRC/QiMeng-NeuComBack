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
  int icount;
  int PC;
};
typedef TYPE_1__ t11_state;
typedef int UINT16;

/* Variables and functions */
scalar_t__ GET_C;

void bcs(t11_state *cpustate, UINT16 op) {
  cpustate->icount -= 12;
  {
    if (GET_C) {
      cpustate->PC += 2 * (signed char)(op & 0xff);
    };
  }
}