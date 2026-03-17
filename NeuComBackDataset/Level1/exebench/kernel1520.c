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
  char *label;
  scalar_t__ lines;
};
typedef TYPE_1__ LUI_NEWLABEL;

/* Variables and functions */

void compute_lines(LUI_NEWLABEL *l) {
  char *ch;

  l->lines = 0;
  for (ch = l->label; *ch; ch++) {
    if (*ch == '\n')
      l->lines++;
  }
  l->lines++;
}