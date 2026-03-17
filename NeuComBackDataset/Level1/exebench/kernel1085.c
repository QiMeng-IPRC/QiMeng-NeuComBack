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
  int reg_data;
  double pres;
};

/* Variables and functions */
TYPE_1__ *libgpio_pwm;
int *libgpio_pwm_mem;

void pwmSetDuty(int pwm, double dc) {

  *(libgpio_pwm_mem + libgpio_pwm[pwm].reg_data) =
      (int)((dc / 100.0) * libgpio_pwm[pwm].pres);
}