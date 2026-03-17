#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int uint32;

/* Variables and functions */

void uint32_pack(char *out, uint32 in) {
  *out = in & 0xff;
  in >>= 8;
  *++out = in & 0xff;
  in >>= 8;
  *++out = in & 0xff;
  in >>= 8;
  *++out = in & 0xff;
}