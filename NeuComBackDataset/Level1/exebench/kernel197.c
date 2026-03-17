#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ boolean;
struct TYPE_2__ {
  int clip_x;
  int clip_y;
  int clip_width;
  int clip_height;
  int /*<<< orphan*/ clipping_enabled;
};

/* Variables and functions */
TYPE_1__ gfx;

void InitGfxClipRegion(boolean enabled, int x, int y, int width, int height) {
  gfx.clipping_enabled = enabled;
  gfx.clip_x = x;
  gfx.clip_y = y;
  gfx.clip_width = width;
  gfx.clip_height = height;
}