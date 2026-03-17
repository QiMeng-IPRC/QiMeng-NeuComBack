#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int trace_base;
int trace_top;

void Zoltan_remove_back_trace() {
  if (trace_top < 0)
    return;

  if (trace_top == trace_base) {
    trace_top = trace_base = -1;
  } else {
    trace_top--;
    if (trace_top < 0)
      trace_top = 30 - 1;
  }
}