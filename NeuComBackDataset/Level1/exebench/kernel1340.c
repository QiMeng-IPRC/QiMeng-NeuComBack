#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int claw_num;
typedef int /*<<< orphan*/ claw_error;

/* Variables and functions */
int /*<<< orphan*/ CLAW_ERR_NONE;

claw_error claw_maths_itl(claw_num valx, claw_num valy, claw_num *res) {
  claw_num i = 0;
  *res = 0;

  for (; i < sizeof(claw_num) * 8; i++) {
    *res |= (valx & 1 << i) << i | (valy & 1 << i) << (i + 1);
  }

  return CLAW_ERR_NONE;
}