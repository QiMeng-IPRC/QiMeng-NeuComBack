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
  int evm;
  int evc;
  int eve;
  int /*<<< orphan*/ evsr;
  int /*<<< orphan*/ evs;
};
typedef TYPE_1__ OPL_SLOT;

/* Variables and functions */

void OPL_KEYOFF(OPL_SLOT *SLOT) {

  if (SLOT->evm > 0x00) {

    SLOT->evm = 0x00;
    if (!(SLOT->evc & (4096 << 16))) {

      SLOT->evc = (4096 << 16);
    }
    SLOT->eve = ((2 * 4096) << 16);
    SLOT->evs = SLOT->evsr;
  }
}