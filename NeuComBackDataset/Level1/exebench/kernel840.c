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
  int h_32;
  int l_32;
};
struct EXTEND {
  int sign;
  scalar_t__ exp;
  TYPE_1__ mantissa;
};

/* Variables and functions */

void mul_ext(struct EXTEND *e1, struct EXTEND *e2, struct EXTEND *e3) {

  register int i, j;
  unsigned short mp[4];
  unsigned short mc[4];
  unsigned short result[8];

  register unsigned short *pres;

  e3->sign = e1->sign ^ e2->sign;

  e3->exp = e1->exp + e2->exp + 1;

  mp[0] = e1->mantissa.h_32 >> 16;
  mp[1] = (unsigned short)e1->mantissa.h_32;
  mp[2] = e1->mantissa.l_32 >> 16;
  mp[3] = (unsigned short)e1->mantissa.l_32;
  mc[0] = e2->mantissa.h_32 >> 16;
  mc[1] = (unsigned short)e2->mantissa.h_32;
  mc[2] = e2->mantissa.l_32 >> 16;
  mc[3] = (unsigned short)e2->mantissa.l_32;
  for (i = 8; i--;) {
    result[i] = 0;
  }

  for (i = 4, pres = &result[4]; i--; pres--)
    if (mp[i]) {
      unsigned short k = 0;
      unsigned long mpi = mp[i];
      for (j = 4; j--;) {
        unsigned long tmp = (unsigned long)pres[j] + k;
        if (mc[j])
          tmp += mpi * mc[j];
        pres[j] = tmp;
        k = tmp >> 16;
      }
      pres[-1] = k;
    }

  if (!(result[0] & 0x8000)) {
    e3->exp--;
    for (i = 0; i <= 3; i++) {
      result[i] <<= 1;
      if (result[i + 1] & 0x8000)
        result[i] |= 1;
    }
    result[4] <<= 1;
  }

  e3->mantissa.h_32 = ((unsigned long)(result[0]) << 16) + result[1];
  e3->mantissa.l_32 = ((unsigned long)(result[2]) << 16) + result[3];
  if (result[4] & 0x8000) {
    if (++e3->mantissa.l_32 == 0) {
      if (++e3->mantissa.h_32 == 0) {
        e3->mantissa.h_32 = 0x80000000;
        e3->exp++;
      }
    }
  }
}