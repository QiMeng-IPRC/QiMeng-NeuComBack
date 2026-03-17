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
typedef unsigned int DPR_WORD;
typedef int DPR_DWORD;

/* Variables and functions */
TYPE_3__ *DpUserIdTable;

DPR_DWORD
dp_get_cref_syntax(DPR_WORD slv_add, DPR_DWORD *c_ref, DPR_DWORD user_handle,
                   DP_ERROR_T *error) {
  if (error) {
    error->error_class = 0x0000;
    error->error_decode = 0;
    error->error_code = 0;
    error->error_code_1 = 0;
    error->error_code_2 = 0;

    if (c_ref == 0) {
      error->error_class = 0x0004;
      error->error_code = 0x00020011;
    } else if ((slv_add >= 127U) && (slv_add != 0xff)) {
      error->error_class = 0x0004;
      error->error_code = 0x00020006;
    } else if ((user_handle > 32) ||
               (DpUserIdTable[user_handle].Used == 0x00)) {
      error->error_class = 0x0004;
      error->error_code = 0x00020002;
    }

    return (error->error_class);
  } else {
    return (0x0004);
  }
}