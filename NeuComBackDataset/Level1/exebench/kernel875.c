#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int UCHAR;
typedef scalar_t__ BOOL;

/* Variables and functions */
int P7L;
int PM7L;
int PMC7L;

void PORT_ChangeP71Output(BOOL initialValue) {
  if (initialValue) {
    P7L |= 0x02;
  } else {
    P7L &= (UCHAR)~0x02;
  }
  PM7L &= (UCHAR)~0x02;
  PMC7L &= (UCHAR)~0x02;
}