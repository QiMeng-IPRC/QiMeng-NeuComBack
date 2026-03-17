#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ MPI_Comm;

/* Variables and functions */
int /*<<< orphan*/ g_passed_comm_arg;

int PMPI_Graph_neighbors_count(MPI_Comm comm, int rank, int *nneighbors) {
  g_passed_comm_arg = comm;
  return 0;
}