#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  float windowAspect;
};
struct TYPE_4__ {
  float xscale;
  float yscale;
  TYPE_1__ glconfig;
};

/* Variables and functions */
TYPE_2__ *DC;

void AdjustFrom640(float *x, float *y, float *w, float *h) {
  *x *= DC->xscale;
  *y *= DC->yscale;
  *w *= DC->xscale;
  *h *= DC->yscale;

  if (DC->glconfig.windowAspect > (4.0f / 3.0f)) {
    *x *= (4.0f / 3.0f) / DC->glconfig.windowAspect;
    *w *= (4.0f / 3.0f) / DC->glconfig.windowAspect;
  }
}