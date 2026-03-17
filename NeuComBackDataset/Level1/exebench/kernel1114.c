#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_23__ TYPE_9__;
typedef struct TYPE_22__ TYPE_8__;
typedef struct TYPE_21__ TYPE_7__;
typedef struct TYPE_20__ TYPE_6__;
typedef struct TYPE_19__ TYPE_5__;
typedef struct TYPE_18__ TYPE_4__;
typedef struct TYPE_17__ TYPE_3__;
typedef struct TYPE_16__ TYPE_2__;
typedef struct TYPE_15__ TYPE_1__;
typedef struct TYPE_14__ TYPE_11__;
typedef struct TYPE_13__ TYPE_10__;

/* Type definitions */
struct TYPE_22__ {
  int /*<<< orphan*/ DataOutChanged;
};
struct TYPE_23__ {
  TYPE_8__ event;
};
struct TYPE_15__ {
  int /*<<< orphan*/ DataInChanged;
};
struct TYPE_16__ {
  TYPE_1__ event;
};
struct TYPE_13__ {
  TYPE_9__ outputEvents;
  TYPE_2__ inputEvents;
};
struct TYPE_19__ {
  int /*<<< orphan*/ DataInChanged;
};
struct TYPE_20__ {
  TYPE_5__ event;
};
struct TYPE_21__ {
  TYPE_6__ inputEvents;
};
struct TYPE_17__ {
  int /*<<< orphan*/ DataInChanged;
};
struct TYPE_18__ {
  TYPE_3__ event;
};
struct TYPE_14__ {
  TYPE_10__ pf1;
  TYPE_7__ pf2;
  TYPE_4__ inputEvents;
};
typedef TYPE_11__ container_two_basic_t;

/* Variables and functions */

void container_two_basic_syncInputEvents(container_two_basic_t *me) {

  me->pf1.inputEvents.event.DataInChanged = me->inputEvents.event.DataInChanged;

  me->pf2.inputEvents.event.DataInChanged =
      me->pf1.outputEvents.event.DataOutChanged;
}