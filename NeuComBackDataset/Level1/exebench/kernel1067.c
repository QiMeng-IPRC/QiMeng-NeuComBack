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
typedef scalar_t__ qboolean;
struct TYPE_4__ {
  int flags;
};
struct TYPE_5__ {
  TYPE_1__ window;
};
typedef TYPE_2__ itemDef_t;

/* Variables and functions */

void Item_SetMouseOver(itemDef_t *item, qboolean focus) {
  if (item) {
    if (focus)
      item->window.flags |= 0x00000001;
    else
      item->window.flags &= ~0x00000001;
  }
}