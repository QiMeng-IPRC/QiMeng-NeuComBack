#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct one_double_t {
  double double1;
};

/* Variables and functions */

void init_one_double(struct one_double_t *one_double, double init_val) {

  one_double->double1 = init_val;
}