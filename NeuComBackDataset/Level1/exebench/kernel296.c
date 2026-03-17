#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
uintptr_t LEVEL_BYTES;
uintptr_t LEVEL_SIZE;
uintptr_t METADATA_BASE;
uintptr_t PAGE_MASK;

uintptr_t level_bmap(size_t level, uintptr_t addr, uintptr_t *offset) {
  uintptr_t bmap;
  switch (level) {
  case 3:
    bmap = METADATA_BASE;
    break;
  case 2:
    bmap = METADATA_BASE + LEVEL_BYTES + ((addr >> 36) & 0xfff) * LEVEL_BYTES;
    break;
  case 1:
    bmap = METADATA_BASE + LEVEL_BYTES + (LEVEL_SIZE * LEVEL_BYTES) +
           ((addr >> 24) & 0xffffff) * LEVEL_BYTES;
    break;
  default:
    bmap = -1;
    break;
  }
  if (offset) {
    *offset = ((addr >> (12 * level)) & PAGE_MASK);
  }
  return bmap;
}