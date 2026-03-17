#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ *g_memTank;
int g_memTankSize;
int g_memUsedLength;

void *frw_alloc(int length) {
  void *mem = 0;
  if (length < 0)
    length = 0;
  if (g_memUsedLength + length <= g_memTankSize) {
    mem = &g_memTank[g_memUsedLength];
    g_memUsedLength = g_memUsedLength + length;
  }
  return mem;
}