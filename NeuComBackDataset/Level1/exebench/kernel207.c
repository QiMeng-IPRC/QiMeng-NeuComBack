#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ u8;
typedef int u32;
typedef int /*<<< orphan*/ RtreeCoord;

/* Variables and functions */

void readCoord(u8 *p, RtreeCoord *pCoord) {
  u32 i = ((((u32)p[0]) << 24) + (((u32)p[1]) << 16) + (((u32)p[2]) << 8) +
           (((u32)p[3]) << 0));
  *(u32 *)pCoord = i;
}