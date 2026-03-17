#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int dimr;
  int disr;
  int dbtosr;
  int drtosr;
  int dsesr;
  int dbosr;
  int dcr;
  int dbtocr;
};
struct TYPE_3__ {
  int pccr0;
  int pccr1;
};

/* Variables and functions */
TYPE_2__ *dmac;
TYPE_1__ *pll_clock;

void dmac_init() {
  pll_clock->pccr0 |= 1 << 28;
  pll_clock->pccr1 |= 1 << 20;

  dmac->dimr = -1;
  dmac->disr = -1;
  dmac->dbtosr = -1;
  dmac->drtosr = -1;
  dmac->dsesr = -1;
  dmac->dbosr = -1;
  dmac->dcr = (1 << 0);
  dmac->dbtocr = (1 << 15) + 512;
}