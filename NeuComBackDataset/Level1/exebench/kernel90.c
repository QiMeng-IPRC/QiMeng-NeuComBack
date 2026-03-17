#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct _icmLuBase {
  int /*<<< orphan*/ blackPoint;
  int /*<<< orphan*/ whitePoint;
};
typedef int /*<<< orphan*/ icmXYZNumber;

/* Variables and functions */

void icmLuWh_bk_points(struct _icmLuBase *p, icmXYZNumber *wht,
                       icmXYZNumber *blk) {
  if (wht != NULL)
    *wht = p->whitePoint;

  if (blk != NULL)
    *blk = p->blackPoint;
}