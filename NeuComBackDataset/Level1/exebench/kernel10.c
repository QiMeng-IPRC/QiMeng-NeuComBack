#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int /*<<< orphan*/ dividor;
  int /*<<< orphan*/ counter;
  int /*<<< orphan*/ line;
};
typedef TYPE_1__ Place;

/* Variables and functions */

void PlaceCopy(Place *to, const Place *from) {
  to->line = from->line;
  to->counter = from->counter;
  to->dividor = from->dividor;
}