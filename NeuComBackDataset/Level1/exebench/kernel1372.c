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
  float xc;
  float Lx;
};
typedef TYPE_1__ Coords;

/* Variables and functions */

float xg2xl(const Coords *c, float xg) { return xg - (c->xc + 0.5f) * c->Lx; }