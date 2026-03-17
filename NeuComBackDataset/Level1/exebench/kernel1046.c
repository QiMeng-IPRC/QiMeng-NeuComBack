#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int knh_uintptr_t;

/* Variables and functions */

void bit_unset(knh_uintptr_t *b, int offset) {
  int x = (offset / (sizeof(knh_uintptr_t) * 8));
  knh_uintptr_t mask =
      (((knh_uintptr_t)1) << (offset % (sizeof(knh_uintptr_t) * 8)));
  ;
  b[x] = b[x] & ~(mask);
}