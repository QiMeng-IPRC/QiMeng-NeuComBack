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
  int label;
};
typedef TYPE_1__ MsrpEndpoint;

/* Variables and functions */

int msrp_endpoint_set_label(MsrpEndpoint *endpoint, int label) {
  if (!endpoint || (label < 0))
    return -1;

  endpoint->label = label;

  return 0;
}