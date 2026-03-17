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
  double *ST;
  int TOP;
  scalar_t__ *tag;
};

/* Variables and functions */
TYPE_1__ cpu_state;

double x87_pop() {
  double t = cpu_state.ST[cpu_state.TOP & 7];
  cpu_state.tag[cpu_state.TOP & 7] = 0;
  cpu_state.TOP++;
  return t;
}