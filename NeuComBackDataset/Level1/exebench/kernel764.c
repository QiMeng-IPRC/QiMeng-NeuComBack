#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ s64;
typedef int /*<<< orphan*/ s32;
typedef int /*<<< orphan*/ s16;

/* Variables and functions */

void pack_s16s32s64_s64(s16 arg1, s32 arg2, s64 arg3, s64 *r) {
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