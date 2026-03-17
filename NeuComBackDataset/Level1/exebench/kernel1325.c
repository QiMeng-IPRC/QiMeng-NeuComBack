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
  int /*<<< orphan*/ len;
  int /*<<< orphan*/ text;
};
typedef TYPE_1__ XSTRING;

/* Variables and functions */

int EqXString(XSTRING *dxs, XSTRING *sxs) {
  dxs->text = sxs->text;
  dxs->len = sxs->len;
  return 0;
}