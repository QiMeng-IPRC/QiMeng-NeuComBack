#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
double Lambert_False_Easting;
double Lambert_False_Northing;
double Lambert_Origin_Lat;
double Lambert_Origin_Long;
double Lambert_Std_Parallel_1;
double Lambert_Std_Parallel_2;
double Lambert_a;
double Lambert_f;

void Get_Lambert_2_Parameters(double *a, double *f, double *Origin_Latitude,
                              double *Central_Meridian, double *Std_Parallel_1,
                              double *Std_Parallel_2, double *False_Easting,
                              double *False_Northing)

{
# 317 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/UoA-eResearch/saga-gis/refs/heads/master/saga-gis/src/modules/projection/pj_geotrans/geotrans/lambert_2.c"
  *a = Lambert_a;
  *f = Lambert_f;
  *Std_Parallel_1 = Lambert_Std_Parallel_1;
  *Std_Parallel_2 = Lambert_Std_Parallel_2;
  *Origin_Latitude = Lambert_Origin_Lat;
  *Central_Meridian = Lambert_Origin_Long;
  *False_Easting = Lambert_False_Easting;
  *False_Northing = Lambert_False_Northing;
  return;
}