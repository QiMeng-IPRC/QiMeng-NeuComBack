#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int FINT;

/* Variables and functions */
int *wfdb_mp2;
int wfdb_mt;

FINT wfdb_setmap2(int code, int newval) {
  return (((0 < (wfdb_mt = (code)) && wfdb_mt <= 49)
               ? (wfdb_mp2[wfdb_mt] = (newval))
               : 0));
}