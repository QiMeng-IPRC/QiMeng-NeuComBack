#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  double ar_expg;
  scalar_t__ ar_ling;
};
typedef TYPE_1__ m_array;

/* Variables and functions */

int m_array_grow_exp(m_array *arr, double expg) {
  if (arr == NULL)
    return 1;

  if (expg <= 1.0)
    return 3;

  arr->ar_expg = expg;
  arr->ar_ling = 0;

  return 0;
}