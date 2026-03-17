#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_3__;
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ stream_state;
struct TYPE_5__ {
  int /*<<< orphan*/ num_values;
};
struct TYPE_4__ {
  int /*<<< orphan*/ count;
};
struct TYPE_6__ {
  scalar_t__ zeros;
  scalar_t__ bits_left;
  scalar_t__ bits;
  TYPE_2__ definition;
  TYPE_1__ decode;
};
typedef TYPE_3__ stream_BHCD_state;

/* Variables and functions */

int s_BHCD_reinit(stream_state *st) {
  stream_BHCD_state *const ss = (stream_BHCD_state *)st;

  ss->decode.count = ss->definition.num_values;
  (((ss)->bits = 0, (ss)->bits_left = 0), (ss)->zeros = 0);
  return 0;
}