#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int Float32;

/* Variables and functions */

void filter5(Float32 *in0, Float32 *in1, Float32 data[]) {
  Float32 temp0, temp1, temp2;

  temp0 = *in0 - ((Float32)21955 / 32768 * data[0]);
  temp1 = data[0] + ((Float32)21955 / 32768 * temp0);
  data[0] = temp0;
  temp0 = *in1 - ((Float32)6390 / 32768 * data[1]);
  temp2 = data[1] + ((Float32)6390 / 32768 * temp0);
  data[1] = temp0;
  *in0 = (temp1 + temp2) * 0.5F;
  *in1 = (temp1 - temp2) * 0.5F;
}