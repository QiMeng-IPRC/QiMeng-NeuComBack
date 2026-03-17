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
  int GoRejectArm;
};
struct TYPE_10__ {
  TYPE_3__ event;
};
struct TYPE_7__ {
  int /*<<< orphan*/ RejectCanister;
  int /*<<< orphan*/ LasersChanged;
};
struct TYPE_8__ {
  TYPE_1__ event;
};
struct TYPE_11__ {
  int _trigger;
  int _state;
  TYPE_4__ outputEvents;
  TYPE_2__ inputEvents;
  int /*<<< orphan*/ RejectSiteLaser;
};
typedef TYPE_5__ RejectArmController_t;

/* Variables and functions */
#define STATE_RejectArmController_AwaitCanister 130
#define STATE_RejectArmController_Clear 129
#define STATE_RejectArmController_GoReject 128

void RejectArmController_run(RejectArmController_t *me) {

  me->outputEvents.event.GoRejectArm = 0;

  if (me->_trigger == 0) {
    switch (me->_state) {
    case STATE_RejectArmController_Clear:
      if (me->inputEvents.event.RejectCanister) {
        me->_state = STATE_RejectArmController_AwaitCanister;
        me->_trigger = 1;
      };
      break;
    case STATE_RejectArmController_AwaitCanister:
      if (me->inputEvents.event.LasersChanged && (me->RejectSiteLaser)) {
        me->_state = STATE_RejectArmController_GoReject;
        me->_trigger = 1;
      };
      break;
    case STATE_RejectArmController_GoReject:
      if (me->inputEvents.event.RejectCanister) {
        me->_state = STATE_RejectArmController_AwaitCanister;
        me->_trigger = 1;
      };
      break;
    }
  }

  if (me->_trigger == 1) {
    switch (me->_state) {
    case STATE_RejectArmController_Clear:
      break;

    case STATE_RejectArmController_AwaitCanister:
      break;

    case STATE_RejectArmController_GoReject:
      me->outputEvents.event.GoRejectArm = 1;
      break;
    }
  }

  me->_trigger = 0;
}