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
  int owns_data;
};
typedef TYPE_1__ hypre_CSRMatrix;

/* Variables and functions */

int hypre_CSRMatrixSetDataOwner(hypre_CSRMatrix *matrix, int owns_data) {
  int ierr = 0;

  ((matrix)->owns_data) = owns_data;

  return ierr;
}