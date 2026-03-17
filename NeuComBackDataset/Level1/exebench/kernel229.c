#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  float Bw;
  float Br;
  float error_th;
  int MaxIter;
  float LMET;
  int laserStep;
  float MaxDistInter;
  float filter;
  int ProjectionFilter;
  float AsocError;
  float errx_out;
  float erry_out;
  float errt_out;
  int IterSmoothConv;
};

/* Variables and functions */
float MAXLASERRANGE;
TYPE_1__ params;

void Init_MbICP_ScanMatching(float max_laser_range, float Bw, float Br, float L,
                             int laserStep, float MaxDistInter, float filter,
                             int ProjectionFilter, float AsocError, int MaxIter,
                             float error_ratio, float error_x, float error_y,
                             float error_t, int IterSmoothConv) {

  MAXLASERRANGE = max_laser_range;
  params.Bw = Bw;
  params.Br = Br * Br;
  params.error_th = error_ratio;
  params.MaxIter = MaxIter;
  params.LMET = L;
  params.laserStep = laserStep;
  params.MaxDistInter = MaxDistInter;
  params.filter = filter;
  params.ProjectionFilter = ProjectionFilter;
  params.AsocError = AsocError;
  params.errx_out = error_x;
  params.erry_out = error_y;
  params.errt_out = error_t;
  params.IterSmoothConv = IterSmoothConv;
}