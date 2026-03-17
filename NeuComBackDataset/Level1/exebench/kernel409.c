#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ real;

/* Variables and functions */

void mcpy(real *M, const real *N) {
  M[0] = N[0];
  M[1] = N[1];
  M[2] = N[2];
  M[3] = N[3];
  M[4] = N[4];
  M[5] = N[5];
  M[6] = N[6];
  M[7] = N[7];
  M[8] = N[8];
  M[9] = N[9];
  M[10] = N[10];
  M[11] = N[11];
  M[12] = N[12];
  M[13] = N[13];
  M[14] = N[14];
  M[15] = N[15];
}