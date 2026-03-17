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
  int /*<<< orphan*/ w;
  int /*<<< orphan*/ z;
  int /*<<< orphan*/ y;
  int /*<<< orphan*/ x;
};
typedef TYPE_1__ quat_t;

/* Variables and functions */

void quat_conjugate(quat_t *q, const quat_t *q1) {
  q->x = -q1->x;
  q->y = -q1->y;
  q->z = -q1->z;
  q->w = q1->w;
}