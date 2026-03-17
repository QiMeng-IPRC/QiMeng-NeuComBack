#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int u8;
typedef int u64;

/* Variables and functions */

void u64_to_wwn(u64 inm, u8 *wwn) {
  wwn[0] = (inm >> 56) & 0xff;
  wwn[1] = (inm >> 48) & 0xff;
  wwn[2] = (inm >> 40) & 0xff;
  wwn[3] = (inm >> 32) & 0xff;
  wwn[4] = (inm >> 24) & 0xff;
  wwn[5] = (inm >> 16) & 0xff;
  wwn[6] = (inm >> 8) & 0xff;
  wwn[7] = inm & 0xff;
}