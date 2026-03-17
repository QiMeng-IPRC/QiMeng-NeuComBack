#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ e_uint32;
struct TYPE_3__ {
  int /*<<< orphan*/ mask;
};
typedef TYPE_1__ OPLL;

/* Variables and functions */

e_uint32 OPLL_toggleMask(OPLL *opll, e_uint32 mask) {
  e_uint32 ret;

  if (opll) {
    ret = opll->mask;
    opll->mask ^= mask;
    return ret;
  } else
    return 0;
}