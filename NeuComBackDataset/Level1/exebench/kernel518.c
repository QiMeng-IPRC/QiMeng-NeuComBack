#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_11__ TYPE_5__;
typedef struct TYPE_10__ TYPE_4__;
typedef struct TYPE_9__ TYPE_3__;
typedef struct TYPE_8__ TYPE_2__;
typedef struct TYPE_7__ TYPE_1__;

/* Type definitions */
struct TYPE_10__ {
  scalar_t__ Dp12Change;
};
struct TYPE_9__ {
  TYPE_4__ event;
};
struct TYPE_7__ {
  scalar_t__ DfChange;
  scalar_t__ Tick;
};
struct TYPE_8__ {
  TYPE_1__ event;
};
struct TYPE_11__ {
  double StepSize;
  double T0;
  double Pi;
  int _trigger;
  int /*<<< orphan*/ _state;
  TYPE_3__ outputEvents;
  TYPE_2__ inputEvents;
};
typedef TYPE_5__ Tieline_t;

/* Variables and functions */
int /*<<< orphan*/ STATE_Tieline_reset;

int Tieline_preinit(Tieline_t *me) {

  me->inputEvents.event.Tick = 0;

  me->inputEvents.event.DfChange = 0;

  me->outputEvents.event.Dp12Change = 0;

  me->StepSize = 0.1;
  me->T0 = 0.0707;
  me->Pi = 3.14159;
# 40 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/PRETgroup/goFB/refs/heads/master/examples/goTFB/lfc_casestudy_twoarea/c/FB_Tieline.c"
  me->_state = STATE_Tieline_reset;
  me->_trigger = 1;

  return 0;
}