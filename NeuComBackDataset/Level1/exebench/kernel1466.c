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
int P3L;
int PM3L;
int PMC3L;

void PORT_ChangeP32Output(BOOL initialValue) {
  if (initialValue) {
    P3L |= 0x04;
  } else {
    P3L &= (UCHAR)~0x04;
  }
  PM3L &= (UCHAR)~0x04;
  PMC3L &= (UCHAR)~0x04;
}