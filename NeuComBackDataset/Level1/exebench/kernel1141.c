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
  int /*<<< orphan*/ GMAC_NCR;
};
typedef TYPE_1__ Gmac;

/* Variables and functions */
int /*<<< orphan*/ GMAC_NCR_THALT;

void gmac_halt_transmission(Gmac *p_gmac) {
  p_gmac->GMAC_NCR |= GMAC_NCR_THALT;
}