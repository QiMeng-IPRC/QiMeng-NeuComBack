#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  double maxGrowthAlt;
};
typedef TYPE_1__ DdManager;

/* Variables and functions */

void Cudd_SetMaxGrowthAlternate(DdManager *dd, double mg) {
  dd->maxGrowthAlt = mg;
}