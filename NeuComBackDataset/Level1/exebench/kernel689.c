#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ h264_decoder;

/* Variables and functions */

void linfo_se(int len, int info, int *value1, int *dummy,
              h264_decoder *dec_params) {
  int n;
  n = (int)(0x01 << (len >> 1)) + info - 1;
  *value1 = (n + 1) >> 1;
  if ((n & 0x01) == 0)
    *value1 = -*value1;
}