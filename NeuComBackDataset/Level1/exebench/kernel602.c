#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */

void printsep(char *str, size_t *len, size_t size) {
# 1366 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/holger24/AFD/refs/heads/master/src/init_afd/ports/snprintf.c"
  do {
    if (*len + 1 < size)
      str[*len] = ',';
    (*len)++;
  } while (0);
}