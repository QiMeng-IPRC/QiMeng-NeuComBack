#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int pmseed;

float fast_frandom(void) {

  union {
    unsigned long ul;
    float f;
  } p;
  p.ul = (((pmseed *= 16807) & 0x007fffff) - 1) | 0x3f800000;
  return p.f - 1.0f;
}