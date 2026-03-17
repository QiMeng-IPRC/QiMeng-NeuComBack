#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  double x;
  double y;
};
struct TYPE_4__ {
  double x;
  double y;
};

/* Variables and functions */
TYPE_2__ cone1;
TYPE_2__ *coneList;
TYPE_1__ position;

void setup() {
  cone1.x = 105.8;
  cone1.y = 105.8;
  coneList[0] = cone1;
  position.x = 105.8;
  position.y = 58.4;
}