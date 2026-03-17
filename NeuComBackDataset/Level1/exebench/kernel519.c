#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  double xy;
  double yx;
  double xx;
  double yy;
  double tx;
  double ty;
};
typedef TYPE_1__ gs_matrix;

/* Variables and functions */

int gs_matrix_invert(const gs_matrix *pm, gs_matrix *pmr) {

  if ((((pm)->xy) == 0.0 && ((pm)->yx) == 0.0)) {
    if (((pm->xx) == 0.0) || ((pm->yy) == 0.0))
      return ((-23));
    pmr->tx = -(pmr->xx = 1.0 / pm->xx) * pm->tx;
    pmr->xy = 0.0;
    pmr->yx = 0.0;
    pmr->ty = -(pmr->yy = 1.0 / pm->yy) * pm->ty;
  } else {
    double det = pm->xx * pm->yy - pm->xy * pm->yx;
    double mxx = pm->xx, mtx = pm->tx;

    if (det == 0)
      return ((-23));
    pmr->xx = pm->yy / det;
    pmr->xy = -pm->xy / det;
    pmr->yx = -pm->yx / det;
    pmr->yy = mxx / det;
    pmr->tx = -(mtx * pmr->xx + pm->ty * pmr->yx);
    pmr->ty = -(mtx * pmr->xy + pm->ty * pmr->yy);
  }
  return 0;
}