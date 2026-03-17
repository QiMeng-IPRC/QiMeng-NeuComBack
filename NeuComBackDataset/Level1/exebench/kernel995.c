#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int UINT8;
typedef int UINT16;

/* Variables and functions */

UINT8 *ne_unstream2(UINT16 *pnum, UINT8 *src) {
  *pnum = src[0] | (src[1] << 8);

  return src + 2;
}