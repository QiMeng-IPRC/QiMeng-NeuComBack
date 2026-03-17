#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
unsigned int maxgcheap;
unsigned int mingcheap;

void set_heap_range(unsigned int min, unsigned int max) {
  if (mingcheap == 0 || min < mingcheap)
    mingcheap = min;
  if (maxgcheap == 0 || max > maxgcheap)
    maxgcheap = max;
}