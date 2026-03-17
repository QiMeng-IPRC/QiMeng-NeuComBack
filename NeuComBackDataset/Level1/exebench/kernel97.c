#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
float YK_0;
float YK_1;
int YP_00;
int YP_01;
int YP_10;
int YP_11;
scalar_t__ YQ_angle;
int YQ_bias;
int YR_measured;
int YS;
float Y_angle;
float Y_bias;
float Yy;

float kalmanFilterY(float newAngle, float newRate, int dt) {

  Y_angle += dt * (newRate - Y_bias);
  YP_00 += dt * (dt * YP_11 - YP_10 - YP_01) + YQ_angle;
  YP_01 += -dt * YP_11;
  YP_10 += -dt * YP_11;
  YP_11 += +YQ_bias;

  YS = YP_00 + YR_measured;
  YK_0 = YP_00 / YS;
  YK_1 = YP_10 / YS;

  Yy = newAngle - Y_angle;
  Y_angle += YK_0 * Yy;
  Y_bias += YK_1 * Yy;

  YP_00 -= YK_0 * YP_00;
  YP_01 -= YK_0 * YP_01;
  YP_10 -= YK_1 * YP_00;
  YP_11 -= YK_1 * YP_01;

  return Y_angle;
}