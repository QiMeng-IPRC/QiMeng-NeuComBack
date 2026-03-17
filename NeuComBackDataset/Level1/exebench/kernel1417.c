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

void filter3(Float32 *in0, Float32 *in1, Float32 *data) {
  Float32 temp1, temp2;

  temp1 = *in1 - ((Float32)13363 / 32768 * *data);
  temp2 = *data + ((Float32)13363 / 32768 * temp1);
  *data = temp1;
  *in1 = (*in0 - temp2) * 0.5F;
  *in0 = (*in0 + temp2) * 0.5F;
}