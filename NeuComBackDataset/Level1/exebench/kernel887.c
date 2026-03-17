#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_17__ TYPE_5__;
typedef struct TYPE_16__ TYPE_4__;
typedef struct TYPE_15__ TYPE_3__;
typedef struct TYPE_14__ TYPE_2__;
typedef struct TYPE_13__ TYPE_1__;
typedef struct TYPE_12__ TYPE_11__;

/* Type definitions */
struct TYPE_16__ {
  int x;
  int y;
};
typedef TYPE_4__ xyi_t;
struct TYPE_15__ {
  int x;
  int y;
};
struct TYPE_17__ {
  TYPE_3__ dim;
};
typedef TYPE_5__ raster_t;
struct TYPE_13__ {
  int x;
  int y;
};
struct TYPE_14__ {
  TYPE_1__ dim;
};
struct TYPE_12__ {
  TYPE_2__ r;
};

/* Variables and functions */
int A_BOT;
int A_CEN;
int A_RIG;
TYPE_11__ fb;

int sprite_offsets(raster_t r, xyi_t *pos, xyi_t *offset, xyi_t *start,
                   xyi_t *stop, int hmode, int vmode) {
  if (hmode == A_CEN)
    pos->x -= (r.dim.x >> 1);
  if (hmode == A_RIG)
    pos->x -= (r.dim.x - 1);
  if (vmode == A_CEN)
    pos->y -= (r.dim.y >> 1);
  if (vmode == A_BOT)
    pos->y -= (r.dim.y - 1);

  offset->x = pos->x;
  offset->y = pos->y;
  if (pos->x < 0)
    start->x = -pos->x;
  else
    start->x = 0;
  if (pos->y < 0)
    start->y = -pos->y;
  else
    start->y = 0;
  if (pos->x + r.dim.x >= fb.r.dim.x)
    stop->x = fb.r.dim.x - pos->x;
  else
    stop->x = r.dim.x;
  if (pos->y + r.dim.y >= fb.r.dim.y)
    stop->y = fb.r.dim.y - pos->y;
  else
    stop->y = r.dim.y;

  if (stop->x <= start->x || stop->y <= start->y)
    return 1;
  return 0;
}