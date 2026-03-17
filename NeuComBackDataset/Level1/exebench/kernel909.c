#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int u;

/* Variables and functions */

void mark_block(u *ptr)

{
  *(ptr + (0x0FFFFFFF & (*(ptr)))) |= 0x80000000;
  *ptr |= 0x40000000;
}