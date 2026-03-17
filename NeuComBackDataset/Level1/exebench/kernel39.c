#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ type8;
typedef int type16;

/* Variables and functions */

void write_w(type8 *ptr, type16 val) {
  ptr[1] = (type8)val;
  val >>= 8;
  ptr[0] = (type8)val;
}