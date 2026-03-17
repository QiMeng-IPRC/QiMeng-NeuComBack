#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct _fat_ptr {
  int dummy;
};

/* Variables and functions */
struct _fat_ptr Cyc_Position_source;

void Cyc_Position_set_position_file(struct _fat_ptr s) {
  Cyc_Position_source = s;
}