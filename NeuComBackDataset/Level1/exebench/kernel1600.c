#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ stream_state;
struct TYPE_2__ {
  int record_left;
  scalar_t__ record_size;
  scalar_t__ copy_left;
};
typedef TYPE_1__ stream_RLE_state;

/* Variables and functions */
int ARCH_MAX_UINT;

int s_RLE_init(stream_state *st) {
  stream_RLE_state *const ss = (stream_RLE_state *)st;

  return ((ss)->record_left =
              ((ss)->record_size == 0 ? ((ss)->record_size = ARCH_MAX_UINT)
                                      : (ss)->record_size),
          (ss)->copy_left = 0);
}