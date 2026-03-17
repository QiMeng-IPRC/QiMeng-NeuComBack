#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int int64;

/* Variables and functions */
int *columns;
int htindex;
int lock;
int stride;

void hash() {
  unsigned int t1, t2;

  int64 htemp;

  t1 = (columns[1] << 7 | columns[2]) << 7 | columns[3];
  t2 = (columns[7] << 7 | columns[6]) << 7 | columns[5];

  htemp = t1 > t2 ? (int64)(t1 << 7 | columns[4]) << 21 | t2
                  : (int64)(t2 << 7 | columns[4]) << 21 | t1;
  lock = (int)(htemp >> 17);
  htindex = (int)(htemp % 1050011);
  stride = 0x20000 + lock % (1050011 / 8 - 0x20000);
}