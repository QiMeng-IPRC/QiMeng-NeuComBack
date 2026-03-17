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
  float x;
  float y;
};
typedef TYPE_1__ Vector;

/* Variables and functions */

float Vector_get_sqrlen(Vector *v) { return (v->x * v->x) + (v->y * v->y); }