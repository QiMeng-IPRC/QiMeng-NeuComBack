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
  int shares_segments;
  scalar_t__ first_subpath;
};
typedef TYPE_1__ gx_path;

/* Variables and functions */

void gx_path_share(gx_path *ppath) {
  if (ppath->first_subpath)
    ppath->shares_segments = 1;
}