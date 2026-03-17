#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  scalar_t__ x;
};
struct taia {
  unsigned long nano;
  unsigned long atto;
  TYPE_1__ sec;
};

/* Variables and functions */

void taia_sub(struct taia *t, struct taia *u, struct taia *v) {
  unsigned long unano = u->nano;
  unsigned long uatto = u->atto;

  t->sec.x = u->sec.x - v->sec.x;
  t->nano = unano - v->nano;
  t->atto = uatto - v->atto;
  if (t->atto > uatto) {
    t->atto += 1000000000UL;
    --t->nano;
  }
  if (t->nano > unano) {
    t->nano += 1000000000UL;
    --t->sec.x;
  }
}