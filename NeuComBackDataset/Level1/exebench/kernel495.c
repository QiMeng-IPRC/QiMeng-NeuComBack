#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ v2df;

/* Variables and functions */

v2df *mm_setr_clipped_pd(v2df *val, double val0, double val1, v2df *valMin,
                         v2df *valMax) {
  if (val0 > ((double *)valMax)[0]) {
    ((double *)val)[0] = ((double *)valMax)[0];
  } else if (val0 < ((double *)valMin)[0]) {
    ((double *)val)[0] = ((double *)valMin)[0];
  } else {
    ((double *)val)[0] = val0;
  }
  if (val1 > ((double *)valMax)[1]) {
    ((double *)val)[1] = ((double *)valMax)[1];
  } else if (val1 < ((double *)valMin)[1]) {
    ((double *)val)[1] = ((double *)valMin)[1];
  } else {
    ((double *)val)[1] = val1;
  }
  return val;
}