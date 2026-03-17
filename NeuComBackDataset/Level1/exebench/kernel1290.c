#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ fsdp_sendrecv_mode_t;
typedef int /*<<< orphan*/ fsdp_error_t;
struct TYPE_3__ {
  int /*<<< orphan*/ a_sendrecv_mode;
};
typedef TYPE_1__ fsdp_description_t;

/* Variables and functions */
int /*<<< orphan*/ FSDPE_INVALID_PARAMETER;
int /*<<< orphan*/ FSDPE_OK;

fsdp_error_t fsdp_set_sendrecv(fsdp_description_t *dsc,
                               fsdp_sendrecv_mode_t mode) {
  if ((NULL == dsc))
    return FSDPE_INVALID_PARAMETER;
  dsc->a_sendrecv_mode = mode;
  return FSDPE_OK;
}