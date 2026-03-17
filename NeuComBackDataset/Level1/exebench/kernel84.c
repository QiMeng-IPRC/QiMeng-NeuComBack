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
  double ref_delta;
};
typedef TYPE_1__ qp_memory_t;

/* Variables and functions */

void qp_set_ref_delta(qp_memory_t *mem, double val) { mem->ref_delta = val; }