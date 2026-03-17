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
  scalar_t__ id;
  int num;
};

/* Variables and functions */
int num_parts;
TYPE_1__ *p_info;

void inc_logical(int i) {
  int j;

  for (j = i; j < num_parts; j++)
    if (p_info[j].id > 0 && ((p_info[j].num) > 3))
      p_info[j].num++;
}