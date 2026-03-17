#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ FpropsError;
typedef int /*<<< orphan*/ FluidState;

/* Variables and functions */
int /*<<< orphan*/ FPROPS_NOT_IMPLEMENTED;

double fprops_dudrho_T(FluidState state, FpropsError *err) {
  *err = FPROPS_NOT_IMPLEMENTED;
  return 0;
}