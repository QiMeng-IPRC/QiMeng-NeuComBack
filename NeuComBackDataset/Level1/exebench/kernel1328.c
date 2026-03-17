#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ u16;
typedef int /*<<< orphan*/ s8;
typedef int /*<<< orphan*/ s64;
typedef int /*<<< orphan*/ s32;

/* Variables and functions */

void pack_s8s32u16_s64(s8 arg1, s32 arg2, u16 arg3, s64 *r) {
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