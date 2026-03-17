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
  char c;
  double d;
};
typedef TYPE_1__ Scd;

/* Variables and functions */

void initScd(Scd *p, int i) {
  p->c = (char)i;
  p->d = (double)i + 1;
}