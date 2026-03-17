#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef unsigned long j;
typedef int /*<<< orphan*/ Tchar;
struct TYPE_4__ {
  int _ohc;
};
struct TYPE_3__ {
  int *width;
  int Char;
};

/* Variables and functions */
TYPE_2__ *envp;
int eschar;
TYPE_1__ t;
int *trtab;
int widthp;

int n_width(Tchar j) {
  int i, k;

  if (((j) & (01uL << 31)))
    return 0;
  if (((j) & (01uL << 16))) {
    if ((((j) & ((01uL << 16) | (01uL << 30))) ==
         ((01uL << 16) | (01uL << 30))))
      return (0);
    k = ((j) & 0xFFFF);
    if ((((j) & ((01uL << 16) | (01uL << 29))) ==
         ((01uL << 16) | (01uL << 29))))
      k = -k;
    return (k);
  }
  i = ((j) & 0x1FFFF);
  if (i < ' ') {
    if (i == '\b')
      return (-widthp);
    if (i == 026)
      i = eschar;
    else if (i == 035)
      return (0);
  }
  if (i == envp->_ohc)
    return (0);
  i = trtab[i];
  if (i < ' ')
    return (0);
  k = t.width[i] * t.Char;
  widthp = k;
  return (k);
}