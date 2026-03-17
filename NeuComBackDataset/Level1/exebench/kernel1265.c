#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
size_t leftDriveMiddle;
scalar_t__ *nMotorEncoder;
size_t rightDriveMiddle;

void resetEncoders() {
  nMotorEncoder[leftDriveMiddle] = 0;
  nMotorEncoder[rightDriveMiddle] = 0;
}