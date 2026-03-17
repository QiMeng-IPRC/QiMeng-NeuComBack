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
  int escto;
};
typedef TYPE_1__ yascreen;

/* Variables and functions */

void yascreen_esc_to(yascreen *s, int timeout) {
  if (!s)
    return;

  s->escto = (timeout >= 0) ? timeout : 300;
}