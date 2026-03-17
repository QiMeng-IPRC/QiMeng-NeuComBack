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
  double SnowThreshold;
  double I0;
};
typedef TYPE_1__ p4;

/* Variables and functions */

void interceptionfun(double *rain, double *intercepted, double Temp,
                     p4 SnowRain_par, double fAPAR) {
  if (Temp > SnowRain_par.SnowThreshold) {
    *intercepted = *rain * (SnowRain_par.I0 * fAPAR / 0.75);
    *rain = *rain - *intercepted;
  } else {
    *intercepted = 0;
  }
}