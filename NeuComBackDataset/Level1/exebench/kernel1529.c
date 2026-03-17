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
  int xmin;
  int xmax;
  int ymin;
  int ymax;
  int zmin;
  int zmax;
  int white;
  int black;
  int axis;
  scalar_t__ opz;
  scalar_t__ opy;
  scalar_t__ opx;
  scalar_t__ pz;
  scalar_t__ py;
  scalar_t__ px;
  scalar_t__ plist;
};
typedef TYPE_1__ IloadInfo;

/* Variables and functions */

int mrc_fix_li(IloadInfo *li, int nx, int ny, int nz) {
  int mx, my, mz;
  mx = nx;
  my = ny;
  mz = nz;

  if (li->plist) {
    mx = (int)li->px;
    my = (int)li->py;
    mz = (int)li->pz;
    if (li->xmin != -1)
      li->xmin -= (int)li->opx;
    if (li->xmax != -1)
      li->xmax -= (int)li->opx;
    if (li->ymin != -1)
      li->ymin -= (int)li->opy;
    if (li->ymax != -1)
      li->ymax -= (int)li->opy;
    if (li->zmin != -1)
      li->zmin -= (int)li->opz;
    if (li->zmax != -1)
      li->zmax -= (int)li->opz;
  }

  if (li->xmax < 0)
    if ((li->xmin > 0) && (li->xmin < mx)) {
      li->xmax = (mx / 2) + (li->xmin / 2);
      li->xmin = li->xmax - li->xmin + 1;
    }
  if ((li->xmax < 0) || (li->xmax > (mx - 1)))
    li->xmax = mx - 1;
  if ((li->xmin < 0) || (li->xmin > li->xmax))
    li->xmin = 0;

  if (li->ymax < 0)
    if ((li->ymin > 0) && (li->ymin < my)) {
      li->ymax = (my / 2) + (li->ymin / 2);
      li->ymin = li->ymax - li->ymin + 1;
    }
  if ((li->ymax < 0) || (li->ymax > (my - 1)))
    li->ymax = my - 1;
  if ((li->ymin < 0) || (li->ymin > li->ymax))
    li->ymin = 0;

  if (li->zmax >= mz)
    li->zmax = mz - 1;
  if (li->zmin >= mz)
    li->zmin = mz - 1;

  if ((li->zmax < 0) || (li->zmax < li->zmin)) {
    if (li->zmin >= 0)
      li->zmax = li->zmin;
    else
      li->zmax = mz - 1;
  }

  if ((li->zmin < 0) || (li->zmin > li->zmax))
    li->zmin = 0;

  if ((li->white > 255) || (li->white < 1))
    li->white = 255;
  if ((li->black < 0) || (li->black > li->white))
    li->black = 0;
  if ((li->axis > 3) || (li->axis < 1))
    li->axis = 3;

  return (0);
}