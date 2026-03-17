#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
unsigned char _l_attrib;

void settextcolor(unsigned char forecolor, unsigned char backcolor) {

  _l_attrib = (backcolor << 4) | (forecolor & 0x0F);
}