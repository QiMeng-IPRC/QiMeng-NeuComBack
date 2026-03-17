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
int P9H;
int PM9H;
int PMC9H;

void PORT_ChangeP910Output(BOOL initialValue) {
  if (initialValue) {
    P9H |= 0x04;
  } else {
    P9H &= (UCHAR)~0x04;
  }
  PM9H &= (UCHAR)~0x04;
  PMC9H &= (UCHAR)~0x04;
}