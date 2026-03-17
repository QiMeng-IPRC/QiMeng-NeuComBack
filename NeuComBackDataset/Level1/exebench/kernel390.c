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
  int /*<<< orphan*/ initPar2;
  int /*<<< orphan*/ initPar1;
  int /*<<< orphan*/ Adiabatic_Index;
};
struct domain {
  TYPE_1__ theParList;
};

/* Variables and functions */
int /*<<< orphan*/ csa;
int /*<<< orphan*/ csw;
int /*<<< orphan*/ gam;

void setICparams(struct domain *theDomain) {
  gam = theDomain->theParList.Adiabatic_Index;
  csa = theDomain->theParList.initPar1;
  csw = theDomain->theParList.initPar2;
}