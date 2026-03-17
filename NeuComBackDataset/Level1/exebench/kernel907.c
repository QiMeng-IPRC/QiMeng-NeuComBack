#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
long g_sub_crsr_ptn_n;

long set_sub_crsr_ptn_n(long n) {
  long prev;

  prev = g_sub_crsr_ptn_n;
  g_sub_crsr_ptn_n = n;

  return prev;
}