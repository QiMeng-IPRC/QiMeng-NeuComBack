#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ MPI_Comm;

/* Variables and functions */
scalar_t__ g_passed_comm_arg;

int PMPI_Comm_compare(MPI_Comm comm1, MPI_Comm comm2, int *result) {
  g_passed_comm_arg = comm1;
  if (comm1 != comm2) {
    return 1;
  }
  return 0;
}