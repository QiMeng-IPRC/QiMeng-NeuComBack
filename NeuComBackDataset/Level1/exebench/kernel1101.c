#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_8__ TYPE_4__;
typedef struct TYPE_7__ TYPE_3__;
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  double vt;
  float v;
};
struct TYPE_8__ {
  TYPE_2__ speed;
};
struct TYPE_5__ {
  double spacing;
};
struct TYPE_7__ {
  TYPE_1__ coefs;
};

/* Variables and functions */
TYPE_4__ motionState;
TYPE_3__ odo;

float get_vg() {
  float delta_v = odo.coefs.spacing * 0.5 * motionState.speed.vt;
  return motionState.speed.v - delta_v;
}