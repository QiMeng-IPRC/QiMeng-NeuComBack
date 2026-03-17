#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct xlate_vdata_st {
  int /*<<< orphan*/ trig;
  int /*<<< orphan*/ func;
  scalar_t__ vflags;
};

/* Variables and functions */
int /*<<< orphan*/ RFXGasFunc;
int /*<<< orphan*/ RFXGasTrig;

int fn_rfxgas(struct xlate_vdata_st *xlate_vdata) {
  xlate_vdata->vflags = 0;
  xlate_vdata->func = RFXGasFunc;
  xlate_vdata->trig = RFXGasTrig;

  return 0;
}