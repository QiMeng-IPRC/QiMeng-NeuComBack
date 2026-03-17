#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct domain {
  int /*<<< orphan*/ phi_max;
};

/* Variables and functions */
int /*<<< orphan*/ phi_max;

void setBCParams(struct domain *theDomain) { phi_max = theDomain->phi_max; }