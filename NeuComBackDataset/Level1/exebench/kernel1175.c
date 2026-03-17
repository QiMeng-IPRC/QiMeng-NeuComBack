#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int eflags;
};
struct TYPE_4__ {
  TYPE_1__ data;
};

/* Variables and functions */
TYPE_2__ vcpu;

void deviceConnectCpuSetNT() { (((vcpu.data.eflags) |= (0x00004000))); }