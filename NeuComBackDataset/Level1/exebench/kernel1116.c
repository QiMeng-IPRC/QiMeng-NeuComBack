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
  int iu_debug_flags;
};
typedef TYPE_1__ ir_unit_t;

/* Variables and functions */

void vmir_set_debug_flags(ir_unit_t *iu, int flags) {
  iu->iu_debug_flags = flags;
}