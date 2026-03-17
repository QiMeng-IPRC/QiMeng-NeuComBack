#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  scalar_t__ s_init;
  int /*<<< orphan*/ z_init;
};
struct TYPE_3__ {
  scalar_t__ *s;
  scalar_t__ *h;
  int /*<<< orphan*/ *z;
  scalar_t__ *y;
  scalar_t__ *x;
};

/* Variables and functions */
TYPE_2__ settings;
TYPE_1__ work;

void set_start(void) {
  int i;
  for (i = 0; i < 11; i++)
    work.x[i] = 0;
  for (i = 0; i < 4; i++)
    work.y[i] = 0;
  for (i = 0; i < 8; i++)
    work.s[i] = (work.h[i] > 0) ? work.h[i] : settings.s_init;
  for (i = 0; i < 8; i++)
    work.z[i] = settings.z_init;
}