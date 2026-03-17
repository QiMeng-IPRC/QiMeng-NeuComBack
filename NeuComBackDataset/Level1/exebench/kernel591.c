#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ add;
unsigned short *mult;

void dorand48(unsigned short xseed[3]) {
  unsigned long accu;
  unsigned short temp[2];

  accu = (unsigned long)mult[0] * (unsigned long)xseed[0] + (unsigned long)add;
  temp[0] = (unsigned short)accu;
  accu >>= sizeof(unsigned short) * 8;
  accu += (unsigned long)mult[0] * (unsigned long)xseed[1] +
          (unsigned long)mult[1] * (unsigned long)xseed[0];
  temp[1] = (unsigned short)accu;
  accu >>= sizeof(unsigned short) * 8;
  accu += mult[0] * xseed[2] + mult[1] * xseed[1] + mult[2] * xseed[0];
  xseed[0] = temp[0];
  xseed[1] = temp[1];
  xseed[2] = (unsigned short)accu;
}