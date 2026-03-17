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
  scalar_t__ supply;
  scalar_t__ top;
  scalar_t__ size;
  scalar_t__ supplytime;
};
typedef TYPE_1__ Ring;

/* Variables and functions */
scalar_t__ ring_clock;

void ring_supplied(Ring *ring, int count) {
  ring->supply = (((ring->supply) + (count) < (ring)->top)
                      ? (ring->supply) + (count)
                      : (((ring->supply) + (count)) - (ring)->size));
  ring->supplytime = ++ring_clock;
}