#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct perf_event_attr {
  int dummy;
};
struct TYPE_2__ {
  int size;
  int exclude_kernel;
  int exclude_hv;
  int exclude_idle;
  int exclude_callchain_kernel;
  int inherit;
  int exclude_guest;
  int disabled;
  int /*<<< orphan*/ read_format;
  int /*<<< orphan*/ type;
};

/* Variables and functions */
int /*<<< orphan*/ PERF_FORMAT_GROUP;
int /*<<< orphan*/ PERF_TYPE_HARDWARE;
TYPE_1__ pea_llc_miss;

void initialize_perf_event_attr(void) {
  pea_llc_miss.type = PERF_TYPE_HARDWARE;
  pea_llc_miss.size = sizeof(struct perf_event_attr);
  pea_llc_miss.read_format = PERF_FORMAT_GROUP;
  pea_llc_miss.exclude_kernel = 1;
  pea_llc_miss.exclude_hv = 1;
  pea_llc_miss.exclude_idle = 1;
  pea_llc_miss.exclude_callchain_kernel = 1;
  pea_llc_miss.inherit = 1;
  pea_llc_miss.exclude_guest = 1;
  pea_llc_miss.disabled = 1;
}