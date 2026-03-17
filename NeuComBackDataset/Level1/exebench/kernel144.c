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
struct TYPE_4__ {
  double close_repulsion_a;
  double close_repulsion_b;
};
struct TYPE_5__ {
  TYPE_1__ force_params;
};
typedef TYPE_2__ map_env_t;

/* Variables and functions */

void map_env_adjust_close_repulsion(map_env_t *map_env, double amt_a,
                                    double amt_b) {
  map_env->force_params.close_repulsion_a *= amt_a;
  map_env->force_params.close_repulsion_b *= amt_b;
}