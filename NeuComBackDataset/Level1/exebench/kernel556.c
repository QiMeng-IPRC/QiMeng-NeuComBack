#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
size_t LL1;
size_t LR1;
size_t LR2;
float *motor;

void activateLauncher(float speed) {
  motor[LL1] = speed;
  motor[LR1] = speed;
  motor[LR2] = speed;
}