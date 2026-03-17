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
  float Ly;
  int yd;
  int yc;
};
typedef TYPE_1__ Coords;

/* Variables and functions */

float yl2yc(const Coords *c, float yl) {
  return yl - 0.5f * c->Ly * (c->yd - 2 * c->yc - 1);
}