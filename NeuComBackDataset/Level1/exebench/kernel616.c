#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_8__ TYPE_3__;
typedef struct TYPE_7__ TYPE_2__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_7__ {
  int index;
  int depth;
  int shift;
};
typedef TYPE_2__ gx_render_plane_t;
struct TYPE_6__ {
  int num_components;
  int depth;
};
struct TYPE_8__ {
  TYPE_1__ color_info;
};
typedef TYPE_3__ gx_device;

/* Variables and functions */

int gx_render_plane_init(gx_render_plane_t *render_plane, const gx_device *dev,
                         int index) {

  int num_planes = dev->color_info.num_components;
  int plane_depth = dev->color_info.depth / num_planes;

  if (index < 0 || index >= num_planes)
    return ((-15));
  render_plane->index = index;
  render_plane->depth = plane_depth;
  render_plane->shift = plane_depth * (num_planes - 1 - index);
  return 0;
}