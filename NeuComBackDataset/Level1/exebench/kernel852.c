#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ RVAL;

/* Variables and functions */
int /*<<< orphan*/ F_half;
int /*<<< orphan*/ F_one;
int /*<<< orphan*/ F_zero;

void ieee_single(const RVAL *dp, unsigned long *p) {
  unsigned long mantissa;
  unsigned long sign;
  int exponent = 0x7f - 1;
  int i;
  RVAL d;

  (d = *dp);

  if ((d < F_zero)) {
    sign = (0x80000000);
    (d = -d);
  } else {
    sign = (unsigned long)0;
  }
  while ((d < F_half)) {
    (d = d + d);
    --exponent;
    if (exponent == 0) {
      *p = (unsigned long)0;
      return;
    }
  }

  while ((d >= F_one)) {
    (d *= F_half);
    ++exponent;
    if (exponent >= 0xff) {
      *p = sign | (0x7fffffff);
      return;
    }
  }

  mantissa = (unsigned long)0;
  for (i = 0; i < 24; i++) {
    (d = d + d);
    mantissa <<= 1;
    if ((d >= F_one)) {
      mantissa |= (unsigned long)0x1L;
      (d -= F_one);
    }
  }

  if ((d >= F_half)) {
    mantissa++;

    if (mantissa > (0x01ffffff)) {
      ++exponent;

      if (exponent >= 0xff) {
        *p = sign | (0x7fffffff);
        return;
      }
      mantissa >>= 1;
    }
  }

  mantissa &= (0x007fffff);
  mantissa |= sign | ((unsigned long)exponent << (24 - 1));
  *p = mantissa;
}