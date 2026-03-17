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
  int angle;
};
typedef TYPE_1__ trigonometricControl;

/* Variables and functions */

void postProcessTrigonometric(trigonometricControl *ctrl) {
  while (ctrl->angle > 2 * 3.1415926)
    ctrl->angle -= 2 * 3.1415926;
}