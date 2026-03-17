#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_3__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  int Used;
};
struct TYPE_4__ {
  int error_class;
  int error_code;
  scalar_t__ error_code_2;
  scalar_t__ error_code_1;
  scalar_t__ error_decode;
};
typedef TYPE_1__ DP_ERROR_T;
typedef int /*<<< orphan*/ DPR_WORD;
typedef int DPR_DWORD;
typedef int /*<<< orphan*/ DPC1_REQ_T;

/* Variables and functions */
TYPE_3__ *DpUserIdTable;

DPR_DWORD
dp_get_result_syntax(DPR_WORD *req_type, DPC1_REQ_T *result,
                     DPR_DWORD user_handle, DP_ERROR_T *error) {
  if (error) {
    error->error_class = 0x0000;
    error->error_code = 0;
    error->error_decode = 0;
    error->error_code_1 = 0;
    error->error_code_2 = 0;

    if (req_type != 0) {
      if (result == 0) {
        error->error_class = 0x0004;
        error->error_code = 0x0002000F;
      } else if ((user_handle > 32) ||
                 (DpUserIdTable[user_handle].Used == 0x00)) {
        error->error_class = 0x0004;
        error->error_code = 0x00020002;
      }

    } else {
      error->error_class = 0x0004;
      error->error_code = 0x0002000E;
    }

    return (error->error_class);
  } else {
    return (0x0004);
  }
}