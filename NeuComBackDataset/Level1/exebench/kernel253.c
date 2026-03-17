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
  int chi;
  int shi;
};
struct TYPE_4__ {
  TYPE_1__ _6;
};

/* Variables and functions */
TYPE_2__ geopack1_;

int gsmgse_(real *xgsm, real *ygsm, real *zgsm, real *xgse, real *ygse,
            real *zgse, integer *j) {
# 1625 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/UAF-SuperDARN-OPS/SuperDARN_MSI_ROS/refs/heads/devel/linux/home/radar/ros.3.6/codebase/analysis/src.lib/geopack/geopack.1.4/src/geopack_2005.c"
  if (*j > 0) {
    *xgse = *xgsm;
    *ygse = *ygsm * (geopack1_._6).chi - *zgsm * (geopack1_._6).shi;
    *zgse = *ygsm * (geopack1_._6).shi + *zgsm * (geopack1_._6).chi;
  } else {
    *xgsm = *xgse;
    *ygsm = *ygse * (geopack1_._6).chi + *zgse * (geopack1_._6).shi;
    *zgsm = *zgse * (geopack1_._6).chi - *ygse * (geopack1_._6).shi;
  }
  return 0;
}