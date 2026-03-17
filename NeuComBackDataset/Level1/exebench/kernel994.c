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
  int /*<<< orphan*/ m32;
  int /*<<< orphan*/ m23;
  int /*<<< orphan*/ m31;
  int /*<<< orphan*/ m13;
  int /*<<< orphan*/ m21;
  int /*<<< orphan*/ m12;
  int /*<<< orphan*/ m30;
  int /*<<< orphan*/ m03;
  int /*<<< orphan*/ m20;
  int /*<<< orphan*/ m02;
  int /*<<< orphan*/ m10;
  int /*<<< orphan*/ m01;
};
typedef TYPE_1__ matrix4f;

/* Variables and functions */

void matrix4f_transpose(matrix4f *mat) {
  mat->m01 = mat->m10, mat->m02 = mat->m20, mat->m03 = mat->m30;
  mat->m12 = mat->m21, mat->m13 = mat->m31;
  mat->m23 = mat->m32;
}