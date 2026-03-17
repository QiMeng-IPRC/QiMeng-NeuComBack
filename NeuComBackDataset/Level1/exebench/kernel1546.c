#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_7__ TYPE_2__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  int /*<<< orphan*/ s_addr;
};
typedef TYPE_1__ in_addr;
struct TYPE_7__ {
  int /*<<< orphan*/ *s6_addr32;
};
typedef TYPE_2__ in6_addr;

/* Variables and functions */
TYPE_2__ in6addr_v4mapped_init;

void IN6_SET_ADDR_V4MAPPED(in6_addr *a6, const in_addr *a4) {
  *a6 = in6addr_v4mapped_init;
  a6->s6_addr32[3] = a4->s_addr;
}