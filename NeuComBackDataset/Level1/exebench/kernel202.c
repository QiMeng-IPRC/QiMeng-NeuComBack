#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ SampleTime;
int controllerDirection;
float dispKd;
float dispKi;
float dispKp;
float kd;
float ki;
float kp;

void PIDSetTunings(float Kp, float Ki, float Kd) {
  if (Kp < 0 || Ki < 0 || Kd < 0)
    return;

  dispKp = Kp;
  dispKi = Ki;
  dispKd = Kd;

  float SampleTimeInSec = ((float)SampleTime) / 1000;
  kp = Kp;
  ki = Ki * SampleTimeInSec;
  kd = Kd / SampleTimeInSec;

  if (controllerDirection == 1) {
    kp = (0 - kp);
    ki = (0 - ki);
    kd = (0 - kd);
  }
}