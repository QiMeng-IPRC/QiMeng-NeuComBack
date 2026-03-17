#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *fptab;

void fp(long left, long right, char text[8]) {
  unsigned long ta[2], t, v[2];
  int i, j, sh;

  ta[0] = right;
  ta[1] = left;
  v[0] = v[1] = 0;
  for (i = 0; i < 2; i++) {
    t = ta[i];
    sh = i;
    for (j = 0; j < 4; j++) {
      v[1] |= fptab[t & 0xf] >> sh;
      t >>= 4;
      v[0] |= fptab[t & 0xf] >> sh;
      t >>= 4;
      sh += 2;
    }
  }
  for (i = 0; i < 2; i++)
    for (j = 0; j < 4; j++) {
      *text++ = v[i];
      v[i] >>= 8;
    }
}