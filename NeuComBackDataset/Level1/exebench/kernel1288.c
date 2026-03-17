#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  int vx;
  int vy;
  int vxsize;
  int vysize;
};

/* Variables and functions */
TYPE_1__ gfx;

void InitGfxDoor2Info(int vx, int vy, int vxsize, int vysize) {
  gfx.vx = vx;
  gfx.vy = vy;
  gfx.vxsize = vxsize;
  gfx.vysize = vysize;
}