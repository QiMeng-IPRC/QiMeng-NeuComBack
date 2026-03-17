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
int PDLH;
int PMDLH;

void PORT_ChangePDL10Output(BOOL initialValue) {
  if (initialValue) {
    PDLH |= 0x04;
  } else {
    PDLH &= (UCHAR)~0x04;
  }
  PMDLH &= (UCHAR)~0x04;
}