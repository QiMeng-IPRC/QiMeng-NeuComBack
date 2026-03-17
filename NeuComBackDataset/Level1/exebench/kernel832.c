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
  float y;
};
struct TYPE_4__ {
  TYPE_1__ hero_pos;
};

/* Variables and functions */
TYPE_2__ lvl;

float get_south_penetration(void) {
  return ((int)lvl.hero_pos.y + 1) - lvl.hero_pos.y;
}