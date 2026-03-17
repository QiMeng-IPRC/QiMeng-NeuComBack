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
  int kind_of_sort;
};

/* Variables and functions */
TYPE_1__ statistic;

void SetKindOfSort(int new_kind_of_sort) {
  statistic.kind_of_sort = new_kind_of_sort;
}