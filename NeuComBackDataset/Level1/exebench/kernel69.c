#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int /*<<< orphan*/ type;
};
typedef TYPE_1__ sarg_result;
typedef int /*<<< orphan*/ sarg_opt_type;

/* Variables and functions */
int /*<<< orphan*/
memset(TYPE_1__ *, int /*<<< orphan*/, int);

void _sarg_result_init(sarg_result *res, sarg_opt_type type) {
  memset(res, 0, sizeof(sarg_result));
  res->type = type;
}