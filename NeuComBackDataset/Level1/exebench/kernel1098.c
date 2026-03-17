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
  int child0;
  int child1;
};
typedef TYPE_1__ CCtsp_PROB_FILE;

/* Variables and functions */

int CCtsp_prob_putchildren(CCtsp_PROB_FILE *p, int child0, int child1)

{
  if (!p)
    return 1;

  p->child0 = child0;
  p->child1 = child1;
  return 0;
}