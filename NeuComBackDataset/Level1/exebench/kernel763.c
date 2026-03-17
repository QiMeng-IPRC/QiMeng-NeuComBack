#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ gx_device;
typedef int /*<<< orphan*/ gs_imager_state;
typedef scalar_t__ frac;

/* Variables and functions */

void rgb_cs_to_rgbk_cm(gx_device *dev, const gs_imager_state *pis, frac r,
                       frac g, frac b, frac out[]) {
  if ((r == g) && (g == b)) {
    out[0] = out[1] = out[2] = ((frac)0);
    out[3] = r;
  } else {
    out[0] = r;
    out[1] = g;
    out[2] = b;
    out[3] = ((frac)0);
  }
}