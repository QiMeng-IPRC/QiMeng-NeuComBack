#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_14__ TYPE_7__;
typedef struct TYPE_13__ TYPE_6__;
typedef struct TYPE_12__ TYPE_5__;
typedef struct TYPE_11__ TYPE_4__;
typedef struct TYPE_10__ TYPE_3__;
typedef struct TYPE_9__ TYPE_2__;
typedef struct TYPE_8__ TYPE_1__;

/* Type definitions */
struct gr_info_s {
  int scalefac_compress;
  unsigned int preflag;
  int block_type;
  scalar_t__ mixed_block_flag;
};
struct TYPE_14__ {
  int *wordpointer;
  int bitindex;
};
struct TYPE_13__ {
  int member_0;
  int member_1;
  int member_2;
  int /*<<< orphan*/ member_3;
};
struct TYPE_12__ {
  int member_0;
  int member_1;
  int member_2;
  int member_3;
};
struct TYPE_11__ {
  int member_0;
  int member_1;
  int member_2;
  int /*<<< orphan*/ member_3;
};
struct TYPE_10__ {
  int member_0;
  int member_1;
  int /*<<< orphan*/ member_3;
  int /*<<< orphan*/ member_2;
};
struct TYPE_9__ {
  int member_0;
  int member_1;
  int member_2;
  int member_3;
};
struct TYPE_8__ {
  int member_0;
  int member_1;
  int member_2;
  int member_3;
};

/* Variables and functions */
TYPE_7__ bsi;
unsigned int *i_slen2;
unsigned int *n_slen2;
unsigned long rval;

int III_get_scale_factors_2(int *scf, struct gr_info_s *gr_info, int i_stereo) {
  unsigned char *pnt;
  int i, j, n = 0, numbits = 0;
  unsigned int slen;

  const unsigned char stab[3][6][4] = {{{6, 5, 5, 5},
                                        {6, 5, 7, 3},
                                        {11, 10, 0, 0},
                                        {7, 7, 7, 0},
                                        {6, 6, 6, 3},
                                        {8, 8, 5, 0}},
                                       {{9, 9, 9, 9},
                                        {9, 9, 12, 6},
                                        {18, 18, 0, 0},
                                        {12, 12, 12, 0},
                                        {12, 9, 9, 6},
                                        {15, 12, 9, 0}},
                                       {{6, 9, 9, 9},
                                        {6, 9, 12, 6},
                                        {15, 18, 0, 0},
                                        {6, 15, 12, 0},
                                        {6, 12, 9, 6},
                                        {6, 18, 9, 0}}};

  if (i_stereo)
    slen = i_slen2[gr_info->scalefac_compress >> 1];
  else
    slen = n_slen2[gr_info->scalefac_compress];

  gr_info->preflag = (slen >> 15) & 0x1;

  n = 0;
  if (gr_info->block_type == 2) {
    n++;
    if (gr_info->mixed_block_flag)
      n++;
  }

  pnt = stab[n][(slen >> 12) & 0x7];

  for (i = 0; i < 4; i++) {
    int num = slen & 0x7;
    slen >>= 3;
    if (num) {
      for (j = 0; j < (int)(pnt[i]); j++)
        *scf++ =
            (rval = (unsigned char)(bsi.wordpointer[0] << bsi.bitindex),
             rval |= ((unsigned long)bsi.wordpointer[1] << bsi.bitindex) >> 8,
             rval <<= num, rval >>= 8, bsi.bitindex += num,
             bsi.wordpointer += (bsi.bitindex >> 3), bsi.bitindex &= 7, rval);
      numbits += pnt[i] * num;
    } else {
      for (j = 0; j < (int)(pnt[i]); j++)
        *scf++ = 0;
    }
  }

  n = (n << 1) + 1;
  for (i = 0; i < n; i++)
    *scf++ = 0;

  return numbits;
}