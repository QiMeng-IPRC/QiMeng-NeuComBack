#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int mr_small;
struct TYPE_2__ {
  int apbase;
  int pack;
  int base;
};
typedef int BOOL;

/* Variables and functions */
TYPE_1__ *mr_mip;

mr_small mr_setbase(mr_small nb) {

  mr_small temp;

  BOOL fits;
  int bits;

  fits = 0;
  bits = 32;
  while (bits > 1) {
    bits /= 2;
    temp = ((mr_small)1 << bits);
    if (temp == nb) {
      fits = 1;
      break;
    }
    if (temp < nb || (bits % 2) != 0)
      break;
  }
  if (fits) {
    mr_mip->apbase = nb;
    mr_mip->pack = 32 / bits;
    mr_mip->base = 0;
    return 0;
  }

  mr_mip->apbase = nb;
  mr_mip->pack = 1;
  mr_mip->base = nb;

  if (mr_mip->base == 0)
    return 0;
  temp = ((((mr_small)1 << (32 - 1))) / (nb));
  while (temp >= nb) {
    temp = ((temp) / (nb));
    mr_mip->base *= nb;
    mr_mip->pack++;
  }

  return 0;
}