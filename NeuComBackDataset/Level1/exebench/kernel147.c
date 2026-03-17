#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_3__;
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  size_t layer;
};
struct TYPE_5__ {
  size_t subseq_layer_num;
  int average_bit_rate;
  int average_frame_rate;
  int *ref_subseq_layer_num;
  int *ref_subseq_id;
  scalar_t__ num_referenced_subseqs;
  scalar_t__ average_rate_flag;
  scalar_t__ duration_flag;
  int /*<<< orphan*/ subseq_id;
};
struct TYPE_4__ {
  int /*<<< orphan*/ subseq_id;
};

/* Variables and functions */
int /*<<< orphan*/ TRUE;
TYPE_3__ *img;
int /*<<< orphan*/ seiHasSubseqChar;
TYPE_2__ seiSubseqChar;
TYPE_1__ *seiSubseqInfo;

void UpdateSubseqChar() {
  seiSubseqChar.subseq_layer_num = img->layer;
  seiSubseqChar.subseq_id = seiSubseqInfo[img->layer].subseq_id;
  seiSubseqChar.duration_flag = 0;
  seiSubseqChar.average_rate_flag = 0;
  seiSubseqChar.average_bit_rate = 100;
  seiSubseqChar.average_frame_rate = 30;
  seiSubseqChar.num_referenced_subseqs = 0;
  seiSubseqChar.ref_subseq_layer_num[0] = 1;
  seiSubseqChar.ref_subseq_id[0] = 2;
  seiSubseqChar.ref_subseq_layer_num[1] = 3;
  seiSubseqChar.ref_subseq_id[1] = 4;

  seiHasSubseqChar = TRUE;
}