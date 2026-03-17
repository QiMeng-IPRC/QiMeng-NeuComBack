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
  int /*<<< orphan*/ line_cap_style;
};
typedef TYPE_1__ EGc;
typedef int /*<<< orphan*/ ECapStyle_t;

/* Variables and functions */

void EGcSetLineCapStyle(EGc *gc, ECapStyle_t style) {
  gc->line_cap_style = style;
}