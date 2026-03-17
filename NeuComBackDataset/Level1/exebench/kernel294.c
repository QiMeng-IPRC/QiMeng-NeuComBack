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
  unsigned int e;
};
typedef TYPE_1__ Digraph;

/* Variables and functions */

unsigned int digraph_size(unsigned int *size, Digraph *digraph) {
  if (size == NULL || digraph == NULL) {
    return 1;
  }

  *size = digraph->e;

  return 0;
}