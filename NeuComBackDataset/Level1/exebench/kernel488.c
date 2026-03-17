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
  int padding;
};
typedef TYPE_1__ nodelist_nodepattern_t;

/* Variables and functions */

int nodelist_nodepattern_set_padding(nodelist_nodepattern_t *np, int padding) {
  int fstatus = -1;
  if (np != NULL) {
    np->padding = padding;
    fstatus = 0;
  }
  return fstatus;
}