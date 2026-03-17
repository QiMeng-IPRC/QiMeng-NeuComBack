#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  char *type;
  scalar_t__ *size;
  scalar_t__ cols;
};

/* Variables and functions */
TYPE_1__ ptable;

void print_table_clean() {
  int i;

  ptable.cols = 0;

  for (i = 0; i < 10; i++) {
    ptable.type[i] = 's';
    ptable.size[i] = 0;
  }
}