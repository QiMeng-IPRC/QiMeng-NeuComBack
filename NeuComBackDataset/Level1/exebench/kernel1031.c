#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int MPI_ERR_ARG;
int MPI_SUCCESS;

int MPI_Get_version(int *major, int *minor) {
  if (!major || !minor)
    return MPI_ERR_ARG;

  *major = 1;
  *minor = 2;
  return MPI_SUCCESS;
}