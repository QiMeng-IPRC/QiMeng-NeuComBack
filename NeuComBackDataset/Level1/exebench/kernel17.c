#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  scalar_t__ maxx;
  scalar_t__ minx;
  scalar_t__ maxy;
  scalar_t__ miny;
};
typedef TYPE_1__ rectObj;

/* Variables and functions */

int msRectIntersect(rectObj *a, const rectObj *b) {
  if (a->maxx > b->maxx)
    a->maxx = b->maxx;
  if (a->minx < b->minx)
    a->minx = b->minx;
  if (a->maxy > b->maxy)
    a->maxy = b->maxy;
  if (a->miny < b->miny)
    a->miny = b->miny;

  if (a->maxx < a->minx || b->maxx < b->minx)
    return 0;
  else
    return 1;
}