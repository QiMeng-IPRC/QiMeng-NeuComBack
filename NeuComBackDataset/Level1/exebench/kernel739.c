#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
double Orth_False_Easting;
double Orth_False_Northing;
double Orth_Origin_Lat;
double Orth_Origin_Long;
double Orth_a;
double Orth_f;

void Get_Orthographic_Parameters(double *a, double *f, double *Origin_Latitude,
                                 double *Central_Meridian,
                                 double *False_Easting,
                                 double *False_Northing) {
# 229 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/UoA-eResearch/saga-gis/refs/heads/master/saga-gis/src/modules/projection/pj_geotrans/geotrans/orthogr.c"
  *a = Orth_a;
  *f = Orth_f;
  *Origin_Latitude = Orth_Origin_Lat;
  *Central_Meridian = Orth_Origin_Long;
  *False_Easting = Orth_False_Easting;
  *False_Northing = Orth_False_Northing;
  return;
}