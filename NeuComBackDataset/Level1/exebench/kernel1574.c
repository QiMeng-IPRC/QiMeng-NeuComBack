#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  scalar_t__ TE_SYNC_R2095_succeeds;
  scalar_t__ TE_SYNC_R2095_precedes;
  scalar_t__ nextID;
};
typedef TYPE_1__ ooaofooa_TE_SYNC;

/* Variables and functions */

void ooaofooa_TE_SYNC_R2095_Unlink_precedes(ooaofooa_TE_SYNC *left,
                                            ooaofooa_TE_SYNC *right) {

  right->nextID = 0;
  left->TE_SYNC_R2095_precedes = 0;
  right->TE_SYNC_R2095_succeeds = 0;
}