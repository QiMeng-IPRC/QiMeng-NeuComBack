#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int byte;

/* Variables and functions */
int numleafs;

void DecompressVis(byte *in, byte *decompressed) {
  int c;
  byte *out;
  int row;

  row = (numleafs + 7) >> 3;
  out = decompressed;

  do {
    if (*in) {
      *out++ = *in++;
      continue;
    }

    c = in[1];
    in += 2;
    while (c) {
      *out++ = 0;
      c--;
    }
  } while (out - decompressed < row);
}