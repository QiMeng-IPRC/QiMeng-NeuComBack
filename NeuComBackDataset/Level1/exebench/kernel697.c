#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ qboolean;
struct TYPE_4__ {
  int flags;
};
struct TYPE_5__ {
  TYPE_1__ window;
};
typedef TYPE_2__ itemDef_t;

/* Variables and functions */
int /*<<< orphan*/ qtrue;

qboolean ItemParse_textasint(itemDef_t *item, int handle) {
  item->window.flags |= 0x10000000;
  return qtrue;
}