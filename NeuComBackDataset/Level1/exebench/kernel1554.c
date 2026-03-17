#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ *accumc;
scalar_t__ *accumd;
scalar_t__ ah1;
scalar_t__ ah2;
scalar_t__ al1;
scalar_t__ al2;
scalar_t__ dec_ah1;
scalar_t__ dec_ah2;
scalar_t__ dec_al1;
scalar_t__ dec_al2;
scalar_t__ *dec_del_bph;
scalar_t__ *dec_del_bpl;
scalar_t__ *dec_del_dhx;
scalar_t__ *dec_del_dltx;
int dec_deth;
int dec_detl;
scalar_t__ dec_nbh;
scalar_t__ dec_nbl;
scalar_t__ dec_ph1;
scalar_t__ dec_ph2;
scalar_t__ dec_plt1;
scalar_t__ dec_plt2;
scalar_t__ dec_rh1;
scalar_t__ dec_rh2;
scalar_t__ dec_rlt1;
scalar_t__ dec_rlt2;
scalar_t__ *delay_bph;
scalar_t__ *delay_bpl;
scalar_t__ *delay_dhx;
scalar_t__ *delay_dltx;
int deth;
int detl;
scalar_t__ nbh;
scalar_t__ nbl;
scalar_t__ ph1;
scalar_t__ ph2;
scalar_t__ plt1;
scalar_t__ plt2;
scalar_t__ rh1;
scalar_t__ rh2;
scalar_t__ rlt1;
scalar_t__ rlt2;
scalar_t__ *tqmf;

void reset() {
  int i;

  detl = dec_detl = 32;
  deth = dec_deth = 8;
  nbl = al1 = al2 = plt1 = plt2 = rlt1 = rlt2 = 0;
  nbh = ah1 = ah2 = ph1 = ph2 = rh1 = rh2 = 0;
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++) {
    delay_dltx[i] = 0;
    delay_dhx[i] = 0;
    dec_del_dltx[i] = 0;
    dec_del_dhx[i] = 0;
  }

  for (i = 0; i < 6; i++) {
    delay_bpl[i] = 0;
    delay_bph[i] = 0;
    dec_del_bpl[i] = 0;
    dec_del_bph[i] = 0;
  }

  for (i = 0; i < 24; i++)
    tqmf[i] = 0;

  for (i = 0; i < 11; i++) {
    accumc[i] = 0;
    accumd[i] = 0;
  }
}