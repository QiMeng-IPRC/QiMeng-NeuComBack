#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int BitsLeft;
scalar_t__ *Buffer;
size_t Index;

void InitBitFile(void) {
  Buffer[Index = 0] = 0;
  BitsLeft = 8;
}