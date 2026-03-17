#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
long UTM_Override;
double UTM_a;
double UTM_f;

void Get_UTM_Parameters(double *a, double *f, long *override) {
# 169 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/UoA-eResearch/saga-gis/refs/heads/master/saga-gis/src/modules/projection/pj_geotrans/geotrans/utm.c"
  *a = UTM_a;
  *f = UTM_f;
  *override = UTM_Override;
}