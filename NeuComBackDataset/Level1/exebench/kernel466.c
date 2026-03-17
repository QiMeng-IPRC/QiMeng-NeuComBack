#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  int /*<<< orphan*/ qz;
  int /*<<< orphan*/ qy;
  int /*<<< orphan*/ qx;
  int /*<<< orphan*/ qi;
};
struct OrientationReps {
  int status;
  TYPE_1__ quat_f;
};
struct FloatQuat {
  int /*<<< orphan*/ qz;
  int /*<<< orphan*/ qy;
  int /*<<< orphan*/ qx;
  int /*<<< orphan*/ qi;
};

/* Variables and functions */

void orientationSetQuat_f(struct OrientationReps *orientation,
                          struct FloatQuat *quat) {
  {
    (orientation->quat_f).qi = (*quat).qi;
    (orientation->quat_f).qx = (*quat).qx;
    (orientation->quat_f).qy = (*quat).qy;
    (orientation->quat_f).qz = (*quat).qz;
  };

  orientation->status = (1 << 3);
}