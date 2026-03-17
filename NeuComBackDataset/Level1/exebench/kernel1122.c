#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ uchar;
typedef short int16;

/* Variables and functions */

void shortget(int16 *V, const uchar *pM) {
  *V = (short)(((short)((uchar)(pM)[1])) + ((short)((short)(pM)[0]) << 8));
}