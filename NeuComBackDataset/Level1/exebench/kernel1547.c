#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *spi0;

void setup_spi() {

  *(spi0 + 2) = 250;

  *(spi0 + 0) = (0x00000030 | 0x00010000);
  *(spi0 + 0) = 0x00010000;
}