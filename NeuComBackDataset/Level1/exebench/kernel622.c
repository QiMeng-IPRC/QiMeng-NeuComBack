#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int *gpio;

void setup_gpios() {
  int g;
# 418 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/8cH9azbsFifZ/WsprryPi/refs/heads/master/wspr.c"
  for (g = 7; g <= 11; g++) {
    *(gpio + ((g) / 10)) &= ~(7 << (((g) % 10) * 3));
  }
}