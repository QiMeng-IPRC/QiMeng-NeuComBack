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
struct TYPE_9__ {
  scalar_t__ InjectRunning;
  scalar_t__ InjectorPositionChanged;
  scalar_t__ InjectDone;
  scalar_t__ StartPump;
};
struct TYPE_10__ {
  TYPE_3__ event;
};
struct TYPE_7__ {
  scalar_t__ PumpFinished;
  scalar_t__ ConveyorStoppedForInject;
  scalar_t__ EmergencyStopChanged;
  scalar_t__ InjectorArmFinishedMovement;
};
struct TYPE_8__ {
  TYPE_1__ event;
};
struct TYPE_11__ {
  int _trigger;
  int /*<<< orphan*/ _state;
  TYPE_4__ outputEvents;
  TYPE_2__ inputEvents;
};
typedef TYPE_5__ InjectorMotorController_t;

/* Variables and functions */
int /*<<< orphan*/ STATE_InjectorMotorController_MoveArmUp;

int InjectorMotorController_preinit(InjectorMotorController_t *me) {

  me->inputEvents.event.InjectorArmFinishedMovement = 0;
  me->inputEvents.event.EmergencyStopChanged = 0;
  me->inputEvents.event.ConveyorStoppedForInject = 0;
  me->inputEvents.event.PumpFinished = 0;

  me->outputEvents.event.StartPump = 0;
  me->outputEvents.event.InjectDone = 0;
  me->outputEvents.event.InjectorPositionChanged = 0;
  me->outputEvents.event.InjectRunning = 0;
# 42 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/PRETgroup/goFB/refs/heads/master/examples/goFB_only/c/BottlingPlant/c/FB_InjectorMotorController.c"
  me->_state = STATE_InjectorMotorController_MoveArmUp;
  me->_trigger = 1;

  return 0;
}