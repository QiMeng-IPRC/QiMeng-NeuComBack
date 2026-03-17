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
  int x;
  int y;
  int name;
  int spec;
  int horizontal;
  int vertical;
};
typedef TYPE_1__ Data;

/* Variables and functions */

void dataInit(Data *d, int x, int y, int name, int spec, int horizontal,
              int vertical) {
  d->x = x;
  d->y = y;
  d->name = name;
  d->spec = spec;
  d->horizontal = horizontal;
  d->vertical = vertical;
}