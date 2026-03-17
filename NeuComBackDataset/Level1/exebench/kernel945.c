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
struct TYPE_4__ {
  double d;
  int i;
};
struct TYPE_5__ {
  char c;
  TYPE_1__ sdi;
};
typedef TYPE_2__ Scsdis;

/* Variables and functions */

void initScsdis(Scsdis *p, int i) {
  p->c = (char)i;
  p->sdi.d = (double)i + 1;
  p->sdi.i = i + 2;
}