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
  int /*<<< orphan*/ font_calc_vref;
};
typedef TYPE_1__ ucg_t;

/* Variables and functions */
int /*<<< orphan*/ ucg_font_calc_vref_top;

void ucg_SetFontPosTop(ucg_t *ucg) {
  ucg->font_calc_vref = ucg_font_calc_vref_top;
}