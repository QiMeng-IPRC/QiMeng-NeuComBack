#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int e;
  int hi;
  int lo;
};
typedef TYPE_1__ Internal;

/* Variables and functions */
int CarryBit;
int ExpInfinity;
int FractBits;
int HiddenBit;

void renormalise(Internal *i) {
  if (i->e < -2 * FractBits)
    i->e = -2 * FractBits;
  while (i->e < 1) {
    i->e++;
    if (i->hi & 0x01)
      i->lo |= CarryBit;
    i->hi >>= 1;
    i->lo = (i->lo >> 1) | (i->lo & 0x01);
  }
  if (i->e >= ExpInfinity)
    ((i)->e = ExpInfinity, (i)->hi = HiddenBit, (i)->lo = 0);
}