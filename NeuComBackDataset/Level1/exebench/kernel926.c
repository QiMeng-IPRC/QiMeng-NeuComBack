#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef scalar_t__ word;
struct TYPE_3__ {
  int /*<<< orphan*/ temp_count;
};
typedef TYPE_1__ flow_graph_builder;

/* Variables and functions */

void graph_builder_dealloc_temps(flow_graph_builder *builder, word count) {
  builder->temp_count -= count;
}