#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ EncoderMode_I1;
int /*<<< orphan*/ Mode_CalI2v;
scalar_t__ cal2Disp;
int /*<<< orphan*/ encoderMode;
int /*<<< orphan*/ mode;

void startCalI2v() {
  cal2Disp = 0;
  mode = Mode_CalI2v;
  encoderMode = EncoderMode_I1;
}