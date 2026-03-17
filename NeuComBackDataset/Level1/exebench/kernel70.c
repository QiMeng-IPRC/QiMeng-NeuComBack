#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  scalar_t__ x0;
  scalar_t__ y0;
  scalar_t__ x1;
  scalar_t__ y1;
};
typedef TYPE_1__ ArtDRect;

/* Variables and functions */

void art_drect_intersect(ArtDRect *dest, const ArtDRect *src1,
                         const ArtDRect *src2) {
  dest->x0 = (((src1->x0) > (src2->x0)) ? (src1->x0) : (src2->x0));
  dest->y0 = (((src1->y0) > (src2->y0)) ? (src1->y0) : (src2->y0));
  dest->x1 = (((src1->x1) < (src2->x1)) ? (src1->x1) : (src2->x1));
  dest->y1 = (((src1->y1) < (src2->y1)) ? (src1->y1) : (src2->y1));
}