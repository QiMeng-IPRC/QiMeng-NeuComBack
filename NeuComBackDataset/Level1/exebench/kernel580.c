#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct refine_edata {
  int node1;
  int node2;
  int dim;
};

/* Variables and functions */

void init_cube_edata(struct refine_edata *edata, int node1, int dim, int mask) {

  edata->node1 = node1;
  edata->node2 = node1 ^ mask;
  edata->dim = dim;
}