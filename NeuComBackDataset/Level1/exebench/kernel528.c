#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
typedef double real;
struct TYPE_5__ {
  double x;
  double y;
  double z;
};
typedef TYPE_1__ VecR;

/* Variables and functions */

void CalcOrientRestrainInteraction(real *potEn, VecR *torque, const real k,
                                   const VecR eRef, const VecR eAct) {
  real cosTheta =
      ((eRef).x * (eAct).x + (eRef).y * (eAct).y + (eRef).z * (eAct).z);

  *potEn = 0.5 * k * ((cosTheta - 1) * (cosTheta - 1));
  (*torque).x = (eAct).y * (eRef).z - (eAct).z * (eRef).y,
  (*torque).y = (eAct).z * (eRef).x - (eAct).x * (eRef).z,
  (*torque).z = (eAct).x * (eRef).y - (eAct).y * (eRef).x;
  (*torque).x *= k * (1 - cosTheta), (*torque).y *= k * (1 - cosTheta),
      (*torque).z *= k * (1 - cosTheta);
}