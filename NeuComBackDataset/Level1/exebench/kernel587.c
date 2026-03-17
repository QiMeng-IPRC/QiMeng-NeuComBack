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
  int /*<<< orphan*/ type;
};
typedef TYPE_1__ subtilis_type_t;

/* Variables and functions */
int /*<<< orphan*/ SUBTILIS_TYPE_ARRAY_INTEGER;

void prv_array_of(const subtilis_type_t *element_type, subtilis_type_t *type) {
  type->type = SUBTILIS_TYPE_ARRAY_INTEGER;
}