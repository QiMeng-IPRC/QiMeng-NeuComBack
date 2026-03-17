#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_9__ TYPE_4__;
typedef struct TYPE_8__ TYPE_3__;
typedef struct TYPE_7__ TYPE_2__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_7__ {
  char sname;
};
struct TYPE_8__ {
  TYPE_2__ opt;
};
struct TYPE_6__ {
  char sname;
};
struct TYPE_9__ {
  scalar_t__ type;
  TYPE_3__ optv;
  TYPE_1__ opt;
};
typedef TYPE_4__ option_t;

/* Variables and functions */
int /*<<< orphan*/ CCLAP_ERR_NULLVALUE;
int /*<<< orphan*/ CCLAP_SUCCESS;
scalar_t__ SOPTION;
int /*<<< orphan*/ cclap_errno;

char cclap_option_sname(option_t *option) {
  if (option == NULL) {
    cclap_errno = CCLAP_ERR_NULLVALUE;
    return 0;
  }
  cclap_errno = CCLAP_SUCCESS;
  return (option->type == SOPTION) ? option->opt.sname : option->optv.opt.sname;
}