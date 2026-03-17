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
  int l;
  int t;
};

/* Variables and functions */
int stacktop;
int storetop;
int *tset_card;
int *tset_stack;
TYPE_1__ *tset_store;

void tset_singleton(int l, int t) {

  storetop = storetop + 1;
  tset_store[storetop].l = l;
  tset_store[storetop].t = t;
  stacktop = stacktop + 1;
  tset_stack[stacktop] = storetop;
  tset_card[stacktop] = 1;
}