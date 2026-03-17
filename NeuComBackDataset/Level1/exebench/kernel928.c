#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ free(scalar_t__);
scalar_t__ *pnt;
int xfact;
int xleft;
int xright;

void reset_hidden_line_removal() {
  int i;
  if (pnt) {
    for (i = 0; i <= ((xright) / xfact) - ((xleft) / xfact); i++) {
      if (pnt[i]) {
        free(pnt[i]);
        pnt[i] = 0;
      };
    };
  };
}