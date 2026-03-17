#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct mantissa {
  scalar_t__ h_32;
  unsigned long l_32;
};

/* Variables and functions */

int b64_add(struct mantissa *e1, struct mantissa *e2)

{
  register int overflow;
  int carry;

  overflow = ((unsigned long)0xFFFFFFFF - e1->h_32 < e2->h_32);
  e1->h_32 += e2->h_32;

  carry = ((unsigned long)0xFFFFFFFF - e1->l_32 < e2->l_32);
  e1->l_32 += e2->l_32;
  if ((carry) && (++e1->h_32 == 0))
    return (1);
  else
    return (overflow);
}