#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct planet {
  double M;
  double vr;
  double omega;
  double r;
  double phi;
  double eps;
  int /*<<< orphan*/ type;
};

/* Variables and functions */
int /*<<< orphan*/ PLPOINTMASS;

void initializePlanets(struct planet *thePlanets) {
  thePlanets[0].M = 1.0;
  thePlanets[0].vr = 0.0;
  thePlanets[0].omega = 0.0;
  thePlanets[0].r = 0.0;
  thePlanets[0].phi = 0.0;
  thePlanets[0].eps = 0.0;
  thePlanets[0].type = PLPOINTMASS;
}