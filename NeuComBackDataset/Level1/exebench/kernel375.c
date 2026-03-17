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
  char const *title;
};
typedef TYPE_1__ vwnd_t;

/* Variables and functions */

void viper_window_set_title(vwnd_t *vwnd, const char *title) {
  if (vwnd == NULL)
    return;

  vwnd->title = title;
}