#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ RandN_usePrevious;
long ix;
long iy;
long iz;

void GetSeed(long *ix_out, long *iy_out, long *iz_out) {
  *ix_out = ix;
  *iy_out = iy;
  *iz_out = iz;
  RandN_usePrevious = 0;
}