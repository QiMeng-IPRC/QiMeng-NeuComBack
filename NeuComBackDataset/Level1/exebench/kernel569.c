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
  int parent;
};
typedef TYPE_1__ CCtsp_PROB_FILE;

/* Variables and functions */

int CCtsp_prob_putparent(CCtsp_PROB_FILE *p, int parent)

{
  if (!p)
    return 1;

  p->parent = parent;
  return 0;
}