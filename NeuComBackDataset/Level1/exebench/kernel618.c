#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_11__ TYPE_5__;
typedef struct TYPE_10__ TYPE_4__;
typedef struct TYPE_9__ TYPE_3__;
typedef struct TYPE_8__ TYPE_2__;
typedef struct TYPE_7__ TYPE_1__;

/* Type definitions */
struct TYPE_10__ {
  int iMinX;
  int iMinY;
  int iMaxX;
  int iMaxY;
};
struct TYPE_9__ {
  int iX;
  int iY;
};
struct TYPE_8__ {
  int iX;
  int iY;
};
struct TYPE_7__ {
  int iX;
  int iY;
};
struct TYPE_11__ {
  TYPE_4__ rec;
  TYPE_3__ p3;
  TYPE_2__ p2;
  TYPE_1__ p1;
};
typedef TYPE_5__ Triangle;

/* Variables and functions */

void createRectBox(Triangle *pTri) {
  int iMinX = pTri->p1.iX;
  int iMinY = pTri->p1.iY;
  int iMaxX = iMinX;
  int iMaxY = iMinY;

  if (iMinX > pTri->p2.iX) {
    iMinX = pTri->p2.iX;
  } else if (iMaxX < pTri->p2.iX) {
    iMaxX = pTri->p2.iX;
  }

  if (iMinX > pTri->p3.iX) {
    iMinX = pTri->p3.iX;
  } else if (iMaxX < pTri->p3.iX) {
    iMaxX = pTri->p3.iX;
  }

  if (iMinY > pTri->p2.iY) {
    iMinY = pTri->p2.iY;
  } else if (iMaxY < pTri->p2.iY) {
    iMaxY = pTri->p2.iY;
  }

  if (iMinY > pTri->p3.iY) {
    iMinY = pTri->p3.iY;
  } else if (iMaxY < pTri->p3.iY) {
    iMaxY = pTri->p3.iY;
  }
  pTri->rec.iMinX = iMinX;
  pTri->rec.iMinY = iMinY;

  pTri->rec.iMaxX = iMaxX;
  pTri->rec.iMaxY = iMaxY;
}