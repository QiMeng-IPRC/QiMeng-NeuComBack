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
  scalar_t__ y;
  scalar_t__ x;
};
typedef TYPE_1__ Vector2;

/* Variables and functions */

void vec2_add(Vector2 *v, const Vector2 *u) {
  v->x += u->x;
  v->y += u->y;
}