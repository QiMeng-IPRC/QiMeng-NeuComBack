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
  float load_factor;
  scalar_t__ capacity;
};
typedef TYPE_1__ table_lp;

/* Variables and functions */

int calc_resize_threshold(table_lp *T) {
  return (int)((float)T->capacity * T->load_factor);
}