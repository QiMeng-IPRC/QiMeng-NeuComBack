#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ fz_color_converter;

/* Variables and functions */

void bgr2g(fz_color_converter *cc, float *dv, float *sv) {
  dv[0] = sv[0] * 0.11f + sv[1] * 0.59f + sv[2] * 0.3f;
}