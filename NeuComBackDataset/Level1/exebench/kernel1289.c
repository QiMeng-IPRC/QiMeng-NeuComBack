#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct ThreeAxis {
  int /*<<< orphan*/ z;
  int /*<<< orphan*/ y;
  int /*<<< orphan*/ x;
};
struct TYPE_2__ {
  scalar_t__ z;
  scalar_t__ y;
  scalar_t__ x;
};

/* Variables and functions */
TYPE_1__ HardIron;

void adj_mag(struct ThreeAxis *mag) {
  mag->x -= HardIron.x;
  mag->y -= HardIron.y;
  mag->z -= HardIron.z;
}