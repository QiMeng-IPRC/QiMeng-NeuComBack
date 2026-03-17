#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int pitchL_Q8;
};
struct TYPE_5__ {
  int frame_length;
  TYPE_1__ sPLC;
};
typedef TYPE_2__ SKP_Silk_decoder_state;

/* Variables and functions */

void SKP_Silk_PLC_Reset(SKP_Silk_decoder_state *psDec) {
  psDec->sPLC.pitchL_Q8 = ((psDec->frame_length) >> (1));
}