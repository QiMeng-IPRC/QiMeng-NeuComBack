#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ uL;
typedef int /*<<< orphan*/ u8;
typedef int /*<<< orphan*/ u32;
typedef int /*<<< orphan*/ s64;

/* Variables and functions */

void pack_u32uLu8_s64(u32 arg1, uL arg2, u8 arg3, s64 *r) {
  ;
  do {
    *(&r[0]) = arg1;
  } while (0);
  do {
    *(&r[1]) = arg2;
  } while (0);
  do {
    *(&r[2]) = arg3;
  } while (0);
}