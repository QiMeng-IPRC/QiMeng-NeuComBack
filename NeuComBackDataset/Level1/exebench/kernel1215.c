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
  float r1X;
  float scl;
  float r1Y;
  float r1Z;
  float dX;
  float r2X;
  float r2Y;
  float r2Z;
  float dY;
  float r3X;
  float r3Y;
  float r3Z;
  float dZ;
  float trX;
  float trY;
  float trZ;
  float dW;
};
typedef TYPE_1__ trfm3D;

/* Variables and functions */

void GetGLMatrixTrfm3D(const trfm3D *thisTrfm3D, float *glmatrix) {

  glmatrix[0] = thisTrfm3D->r1X * thisTrfm3D->scl;
  glmatrix[1] = thisTrfm3D->r1Y * thisTrfm3D->scl;
  glmatrix[2] = thisTrfm3D->r1Z * thisTrfm3D->scl;
  glmatrix[3] = thisTrfm3D->dX;
  glmatrix[4] = thisTrfm3D->r2X * thisTrfm3D->scl;
  glmatrix[5] = thisTrfm3D->r2Y * thisTrfm3D->scl;
  glmatrix[6] = thisTrfm3D->r2Z * thisTrfm3D->scl;
  glmatrix[7] = thisTrfm3D->dY;
  glmatrix[8] = thisTrfm3D->r3X * thisTrfm3D->scl;
  glmatrix[9] = thisTrfm3D->r3Y * thisTrfm3D->scl;
  glmatrix[10] = thisTrfm3D->r3Z * thisTrfm3D->scl;
  glmatrix[11] = thisTrfm3D->dZ;
  glmatrix[12] = thisTrfm3D->trX;
  glmatrix[13] = thisTrfm3D->trY;
  glmatrix[14] = thisTrfm3D->trZ;
  glmatrix[15] = thisTrfm3D->dW;
}