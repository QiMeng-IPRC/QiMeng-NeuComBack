#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct shl_array {
  int /*<<< orphan*/ length;
};

/* Variables and functions */

void shl_array_pop(struct shl_array *arr) {
  if (!arr || !arr->length)
    return;

  --arr->length;
}