#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ int16;

/* Variables and functions */

int16 h_nint(float *x) {
  return ((*x) >= 0.0F ? (int16)(*x + .5F) : -(int16)(.5F - *x));
}