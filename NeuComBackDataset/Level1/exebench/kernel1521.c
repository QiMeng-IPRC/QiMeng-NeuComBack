#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int real;
typedef scalar_t__ integer;
struct TYPE_3__ {
  int a11;
  int a12;
  int a13;
  int a21;
  int a22;
  int a23;
  int a31;
  int a32;
  int a33;
};
struct TYPE_4__ {
  TYPE_1__ _8;
};

/* Variables and functions */
TYPE_2__ geopack1_;

int geogsm_(real *xgeo, real *ygeo, real *zgeo, real *xgsm, real *ygsm,
            real *zgsm, integer *j) {
# 1693 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/UAF-SuperDARN-OPS/SuperDARN_MSI_ROS/refs/heads/devel/linux/home/radar/ros.3.6/codebase/analysis/src.lib/geopack/geopack.1.4/src/geopack_2005.c"
  if (*j > 0) {
    *xgsm = (geopack1_._8).a11 * *xgeo + (geopack1_._8).a12 * *ygeo +
            (geopack1_._8).a13 * *zgeo;
    *ygsm = (geopack1_._8).a21 * *xgeo + (geopack1_._8).a22 * *ygeo +
            (geopack1_._8).a23 * *zgeo;
    *zgsm = (geopack1_._8).a31 * *xgeo + (geopack1_._8).a32 * *ygeo +
            (geopack1_._8).a33 * *zgeo;
  } else {
    *xgeo = (geopack1_._8).a11 * *xgsm + (geopack1_._8).a21 * *ygsm +
            (geopack1_._8).a31 * *zgsm;
    *ygeo = (geopack1_._8).a12 * *xgsm + (geopack1_._8).a22 * *ygsm +
            (geopack1_._8).a32 * *zgsm;
    *zgeo = (geopack1_._8).a13 * *xgsm + (geopack1_._8).a23 * *ygsm +
            (geopack1_._8).a33 * *zgsm;
  }
  return 0;
}