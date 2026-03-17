#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  size_t metacontent_extent;
};
typedef TYPE_1__ Image;

/* Variables and functions */

void SetPixelMetacontentExtent(Image *image, const size_t extent) {
  image->metacontent_extent = extent;
}