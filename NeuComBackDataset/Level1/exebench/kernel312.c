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
  float D;
  float Xst;
  int deltaXst;
  float Px;
  float E;
  float Yst;
  int deltaYst;
  float Py;
  float F;
  float Zst;
  float Pz;
  float ky;
  float dY;
  scalar_t__ Yp;
};
typedef TYPE_1__ vdp2rotationparameter_struct;

/* Variables and functions */

int GenerateRotatedYPos(vdp2rotationparameter_struct *p, int x, int y) {
  float Ysp = p->D * ((p->Xst + p->deltaXst * y) - p->Px) +
              p->E * ((p->Yst + p->deltaYst * y) - p->Py) +
              p->F * (p->Zst - p->Pz);

  return (int)(p->ky * (Ysp + p->dY * (float)x) + p->Yp);
}