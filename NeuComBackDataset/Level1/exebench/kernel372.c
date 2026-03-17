#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
typedef scalar_t__ unspos;
typedef scalar_t__ u32;
struct TYPE_4__ {
  scalar_t__ len;
};
typedef TYPE_1__ seq;

/* Variables and functions */

void expand_segment(seq *seq1, unspos *pos1, seq *seq2, unspos *pos2,
                    unspos *length, u32 expandLeft, u32 expandRight) {
  unspos beg1 = *pos1;
  unspos beg2 = *pos2;
  unspos end1 = beg1 + *length;
  unspos end2 = beg2 + *length;
  unspos extra1, extra2;

  if (expandLeft > 0) {
    if (beg1 < (unspos)expandLeft)
      expandLeft = beg1;
    if (beg2 < (unspos)expandLeft)
      expandLeft = beg2;
    beg1 -= expandLeft;
    beg2 -= expandLeft;
  }

  if (expandRight > 0) {
    extra1 = seq1->len - end1;
    extra2 = seq2->len - end2;
    if (extra1 < (unspos)expandRight)
      expandRight = extra1;
    if (extra2 < (unspos)expandRight)
      expandRight = extra2;
    end1 += expandRight;
  }

  *pos1 = beg1;
  *pos2 = beg2;
  *length = end1 - beg1;
}