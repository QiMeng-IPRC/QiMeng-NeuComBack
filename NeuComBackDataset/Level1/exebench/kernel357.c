#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int ubyte;

/* Variables and functions */
int *s_via;

void sw_via_E(ubyte iobyte) {
  (iobyte & 0x80) ? (s_via[14] |= iobyte)
                  : (s_via[14] = ((s_via[14] | iobyte) ^ iobyte));
  s_via[14] |= 0x80;
}