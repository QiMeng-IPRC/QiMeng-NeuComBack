#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct conv {
  int bps;
  int nch;
  int shift;
  unsigned int bias;
  int bfirst;
  int bnext;
  int snext;
};
struct aparams {
  int bps;
  int bits;
  scalar_t__ le;
  scalar_t__ sig;
  scalar_t__ msb;
};

/* Variables and functions */

void dec_init(struct conv *p, struct aparams *par, int nch) {
  p->bps = par->bps;
  p->nch = nch;
  if (par->msb) {
    p->shift = 32 - par->bps * 8;
  } else {
    p->shift = 32 - par->bits;
  }
  if (par->sig) {
    p->bias = (1U << 31) >> p->shift;
  } else {
    p->bias = 0;
  }
  if (par->le) {
    p->bfirst = par->bps - 1;
    p->bnext = -1;
    p->snext = 2 * par->bps;
  } else {
    p->bfirst = 0;
    p->bnext = 1;
    p->snext = 0;
  }
# 560 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/Bang3DEngine/Bang/refs/heads/master/Compile/CompileDependencies/ThirdParty/sndio/sndiod/dsp.c"
}