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
  int w;
  int h;
};
typedef TYPE_1__ Coord;

/* Variables and functions */

void setCoord(Coord *c, int w, int h) {
  c->w = w;
  c->h = h;
}