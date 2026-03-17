#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int uint32;
typedef int /*<<< orphan*/ octet;

/* Variables and functions */

void int32ToBytes(uint32 i, octet *p) {
  *p++ = i & 0xff;
  i >>= 8;
  *p++ = i & 0xff;
  i >>= 8;
  *p++ = i & 0xff;
  i >>= 8;
  *p++ = i;
}