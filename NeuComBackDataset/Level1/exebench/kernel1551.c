#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct tree_halo {
  scalar_t__ mvir;
  float vmax;
};

/* Variables and functions */
float LAST_DITCH_VMAX_RATIO_2;
float UNPHYSICAL;

float last_ditch_metric(struct tree_halo *h1, struct tree_halo *h2) {
  if (!(h1->mvir > 0) || !(h2->mvir > 0) || !(h1->vmax > 0) || !(h2->vmax > 0))
    return UNPHYSICAL;
  float vmax_ratio =
      (h1->vmax > h2->vmax) ? (h1->vmax / h2->vmax) : (h2->vmax / h1->vmax);
  if (vmax_ratio > LAST_DITCH_VMAX_RATIO_2)
    return UNPHYSICAL;
  return vmax_ratio;
}