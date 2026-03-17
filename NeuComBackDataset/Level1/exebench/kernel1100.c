#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int byte;

/* Variables and functions */
int output;

void setOutputs(byte wishedPosition) {
  output = (wishedPosition & 0x3F) | (output & 0xc0);
}