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
  int /*<<< orphan*/ DMACR;
};
typedef TYPE_1__ LPC_SSP_T;

/* Variables and functions */
int /*<<< orphan*/ SSP_DMA_BITMASK;

void Chip_SSP_DMA_Disable(LPC_SSP_T *pSSP) { pSSP->DMACR &= ~SSP_DMA_BITMASK; }