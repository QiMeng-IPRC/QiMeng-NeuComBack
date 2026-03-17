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
  unsigned long flags;
};
typedef TYPE_1__ psi_sct_t;

/* Variables and functions */

void psi_sct_set_flags(psi_sct_t *sct, unsigned long flags, int set) {
  if (set) {
    sct->flags |= flags;
  } else {
    sct->flags &= ~flags;
  }
}