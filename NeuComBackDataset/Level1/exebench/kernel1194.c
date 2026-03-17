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
  int /*<<< orphan*/ metricPar1;
};
struct domain {
  TYPE_1__ theParList;
};

/* Variables and functions */
int /*<<< orphan*/ om;

void setMetricParams(struct domain *theDomain) {
  om = theDomain->theParList.metricPar1;
}