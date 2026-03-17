#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int QuadWord;
typedef int Byte;

/* Variables and functions */

void MWrite8L(Byte *Buffer, QuadWord Value) {
  Buffer[0] = Value & 0xff;
  Buffer[1] = (Value >> 8) & 0xff;
  Buffer[2] = (Value >> 16) & 0xff;
  Buffer[3] = (Value >> 24) & 0xff;
  Buffer[4] = (Value >> 32) & 0xff;
  Buffer[5] = (Value >> 40) & 0xff;
  Buffer[6] = (Value >> 48) & 0xff;
  Buffer[7] = (Value >> 56) & 0xff;
}