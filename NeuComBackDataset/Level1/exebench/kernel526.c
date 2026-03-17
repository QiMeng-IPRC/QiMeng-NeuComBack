#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct vector_t {
  int index;
  int size;
};

/* Variables and functions */

float vector_resize(struct vector_t *v) {
  if (v->index == v->size) {
    v->size *= 2;
    return 2;
  } else if (v->index <= v->size / 2) {
    v->size /= 2;
    return 0.5;
  }
  return 1;
}