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
  unsigned int fh_neginf;
};
typedef TYPE_1__ FibHeap;

/* Variables and functions */

unsigned int fh_setneginf(FibHeap *h, unsigned int data) {
  unsigned int old;
  old = h->fh_neginf;
  h->fh_neginf = data;
  return old;
}