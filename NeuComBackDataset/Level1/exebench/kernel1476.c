#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
float Cut1;
float Cut2;
int Lambda;
float SimTol;
scalar_t__ Trace;
int VectLen;

void Set_Default_Parms()

{
  Lambda = 5 * VectLen;
  Trace = 0;
  Cut1 = Cut2 = (float)0.01;
  SimTol = (float)0.5;
}