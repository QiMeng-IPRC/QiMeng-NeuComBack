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
struct TYPE_5__ {
  double *delta_angles;
};
struct TYPE_6__ {
  TYPE_1__ pmove;
};
struct TYPE_7__ {
  TYPE_2__ playerstate;
};
struct TYPE_8__ {
  float *viewangles;
  TYPE_3__ frame;
};

/* Variables and functions */
TYPE_4__ cl;

void CL_ClampPitch(void) {
  float pitch;

  pitch = ((cl.frame.playerstate.pmove.delta_angles[0]) * (360.0 / 65536));
  if (pitch > 180)
    pitch -= 360;

  if (cl.viewangles[0] + pitch < -360)
    cl.viewangles[0] += 360;
  if (cl.viewangles[0] + pitch > 360)
    cl.viewangles[0] -= 360;

  if (cl.viewangles[0] + pitch > 89)
    cl.viewangles[0] = 89 - pitch;
  if (cl.viewangles[0] + pitch < -89)
    cl.viewangles[0] = -89 - pitch;
}