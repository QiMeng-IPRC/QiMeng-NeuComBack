#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
size_t JOY_BTN_HITCH_DOWN;
size_t JOY_BTN_HITCH_UP;
float *motor;
size_t servoHitch;
float *vexRT;

void runHitch() {
  float lr7;
  lr7 = vexRT[JOY_BTN_HITCH_UP] - vexRT[JOY_BTN_HITCH_DOWN];
  if (lr7 != 0.0)
    motor[servoHitch] = lr7 * 128;
}