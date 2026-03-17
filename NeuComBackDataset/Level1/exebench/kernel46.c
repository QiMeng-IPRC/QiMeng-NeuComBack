#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_7__ TYPE_2__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_7__ {
  int fX;
  int fY;
  int fZ;
  float fW;
};
struct TYPE_6__ {
  int fX;
  int fY;
  int fZ;
};
typedef TYPE_1__ BLVec3;
typedef TYPE_2__ BLQuaternion;

/* Variables and functions */

BLVec3 blQuatTransform(const BLQuaternion *_Q, const BLVec3 *_Vec) {
  BLVec3 _ret, _uv, _uuv, _qvec;
  _qvec.fX = _Q->fX;
  _qvec.fY = _Q->fY;
  _qvec.fZ = _Q->fZ;
  _uv.fX = _qvec.fY * _Vec->fZ - _qvec.fZ * _Vec->fY;
  _uv.fY = _qvec.fZ * _Vec->fX - _qvec.fX * _Vec->fZ;
  _uv.fZ = _qvec.fX * _Vec->fY - _qvec.fY * _Vec->fX;
  _uuv.fX = _qvec.fY * _uv.fZ - _qvec.fZ * _uv.fY;
  _uuv.fY = _qvec.fZ * _uv.fX - _qvec.fX * _uv.fZ;
  _uuv.fZ = _qvec.fX * _uv.fY - _qvec.fY * _uv.fX;
  _uv.fX *= (2.0f * _Q->fW);
  _uv.fY *= (2.0f * _Q->fW);
  _uv.fZ *= (2.0f * _Q->fW);
  _uuv.fX *= 2.0f;
  _uuv.fY *= 2.0f;
  _uuv.fZ *= 2.0f;
  _ret.fX = _Vec->fX + _uv.fX + _uuv.fX;
  _ret.fY = _Vec->fY + _uv.fY + _uuv.fY;
  _ret.fZ = _Vec->fZ + _uv.fZ + _uuv.fZ;
  return _ret;
}