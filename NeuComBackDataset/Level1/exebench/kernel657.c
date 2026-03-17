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
  int /*<<< orphan*/ y;
  int /*<<< orphan*/ x;
};

/* Variables and functions */
TYPE_1__ coords;
scalar_t__ deltaX;
scalar_t__ deltaY;

void addDeltasToCumulative() {
  coords.x += deltaX;
  coords.y += deltaY;
}