#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int error_class;
  int error_code;
  scalar_t__ error_code_2;
  scalar_t__ error_code_1;
  scalar_t__ error_decode;
};
typedef TYPE_1__ DP_ERROR_T;
typedef int DPR_WORD;
typedef int DPR_DWORD;
typedef int /*<<< orphan*/ DPR_BYTE;

/* Variables and functions */

DPR_DWORD
dps_calc_io_data_len_syntax(DPR_WORD cfg_len, DPR_BYTE *cfg_data,
                            DPR_WORD *in_data_len, DPR_WORD *out_data_len,
                            DP_ERROR_T *error) {
  if (error) {
    error->error_class = 0x0000;
    error->error_decode = 0;
    error->error_code_1 = 0;
    error->error_code_2 = 0;

    if (cfg_len > 244) {
      error->error_class = 0x0004;
      error->error_code = 0x0003000c;
    } else if (!cfg_data) {
      error->error_class = 0x0004;
      error->error_code = 0x0003000d;
    } else if (!in_data_len) {
      error->error_class = 0x0004;
      error->error_code = 0x0003000e;
    } else if (!out_data_len) {
      error->error_class = 0x0004;
      error->error_code = 0x0003000f;
    }
    return (error->error_class);
  } else {
    return (0x0004);
  }
}