#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct tek_STR_BITMODEL {
  int t;
  int m;
  int prb1;
  int prb0;
  int tmsk;
  int ntm;
};

/* Variables and functions */

void tek_setbm5(struct tek_STR_BITMODEL *bm, int t, int m) {
  bm->t = t;
  bm->m = m;
  bm->prb1 = -1 << (m + t);
  bm->prb0 = ~bm->prb1;
  bm->prb1 |= 1 << t;
  bm->tmsk = (-1 << t) & 0xffff;
  bm->prb0 &= bm->tmsk;
  bm->prb1 &= bm->tmsk;
  bm->ntm = ~bm->tmsk;
  return;
}