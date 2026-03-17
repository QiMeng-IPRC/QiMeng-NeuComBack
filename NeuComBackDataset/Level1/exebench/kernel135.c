#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ AFun;

/* Variables and functions */
unsigned int nr_protected_symbols;
scalar_t__ *protected_symbols;

void ATunprotectAFun(AFun sym) {
  unsigned int lcv;

  for (lcv = 0; lcv < nr_protected_symbols; ++lcv) {
    if (protected_symbols[lcv] == sym) {
      protected_symbols[lcv] = protected_symbols[--nr_protected_symbols];
      protected_symbols[nr_protected_symbols] = -1;
      break;
    }
  }
}