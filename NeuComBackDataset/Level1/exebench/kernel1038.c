#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int uint8;

/* Variables and functions */
int const *cst_mul;

void mul2(const uint8 *in, uint8 *out) {
  int i, t = in[0] >> 7;
  for (i = 0; i < 15; i++)
    out[i] = (in[i] << 1) | (in[i + 1] >> 7);
  out[15] = (in[15] << 1) ^ cst_mul[t];
}