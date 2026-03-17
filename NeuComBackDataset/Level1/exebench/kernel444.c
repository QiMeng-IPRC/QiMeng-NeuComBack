#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ rot_matrix_t;

/* Variables and functions */

void rot_matrix_set_all(rot_matrix_t *M, rot_matrix_t a) {
  char i;
  for (i = 0; i < 3 * 3; i++) {
    M[i] = a;
  }
}