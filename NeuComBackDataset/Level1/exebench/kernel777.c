#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int prop;
typedef int UInt32;
typedef int SRes;
typedef int Byte;

/* Variables and functions */

SRes Lzma2Dec_GetOldProps(Byte prop, Byte *props) {
  UInt32 dicSize;
  if (prop > 40)
    return 4;
  dicSize = (prop == 40) ? 0xFFFFFFFF
                         : (((UInt32)2 | ((prop) & 1)) << ((prop) / 2 + 11));
  props[0] = (Byte)4;
  props[1] = (Byte)(dicSize);
  props[2] = (Byte)(dicSize >> 8);
  props[3] = (Byte)(dicSize >> 16);
  props[4] = (Byte)(dicSize >> 24);
  return 0;
}