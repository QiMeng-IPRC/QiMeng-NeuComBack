#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  float r1X;
  float r2X;
  float r3X;
  float r1Y;
  float r2Y;
  float r3Y;
  float r1Z;
  float r2Z;
  float r3Z;
};
typedef TYPE_1__ trfm3D;
struct TYPE_6__ {
  float x;
  float y;
  float z;
  float w;
};
typedef TYPE_2__ Quaternion;

/* Variables and functions */

void QuaternionToTrfm3D(const Quaternion *Q, trfm3D *T) {

  float fTx = Q->x + Q->x;
  float fTy = Q->y + Q->y;
  float fTz = Q->z + Q->z;
  float fTwx = fTx * Q->w;
  float fTwy = fTy * Q->w;
  float fTwz = fTz * Q->w;
  float fTxx = fTx * Q->x;
  float fTxy = fTy * Q->x;
  float fTxz = fTz * Q->x;
  float fTyy = fTy * Q->y;
  float fTyz = fTz * Q->y;
  float fTzz = fTz * Q->z;

  (T->r1X) = 1.0f - (fTyy + fTzz);
  (T->r2X) = fTxy - fTwz;
  (T->r3X) = fTxz + fTwy;
  (T->r1Y) = fTxy + fTwz;
  (T->r2Y) = 1.0f - (fTxx + fTzz);
  (T->r3Y) = fTyz - fTwx;
  (T->r1Z) = fTxz - fTwy;
  (T->r2Z) = fTyz + fTwx;
  (T->r3Z) = 1.0f - (fTxx + fTyy);
}