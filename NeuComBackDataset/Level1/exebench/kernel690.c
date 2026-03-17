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
  int /*<<< orphan*/ clc_trigger;
  int /*<<< orphan*/ clc_full;
};
typedef TYPE_1__ cl_loglevel_configuration;
typedef int /*<<< orphan*/ cl_loglevel;
typedef int /*<<< orphan*/ cl_handle;

/* Variables and functions */

void(cl_get_loglevel_configuration)(cl_handle *cl,
                                    cl_loglevel_configuration *clc) {
  clc->clc_full = ((cl) != NULL ? *(cl_loglevel const *)(cl) : 0);
  clc->clc_trigger = ((cl) != NULL ? ((cl_loglevel const *)(cl))[1] : 0);
}