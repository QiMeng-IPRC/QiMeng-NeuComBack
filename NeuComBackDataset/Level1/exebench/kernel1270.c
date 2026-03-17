#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ opus_uint32;

/* Variables and functions */

void cwrsi1(int _k, opus_uint32 _i, int *_y) {
  int s;
  s = -(int)_i;
  _y[0] = (_k + s) ^ s;
}