#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ debug_handles_t;
struct TYPE_4__ {
  int fd;
};

/* Variables and functions */
TYPE_1__ *debug_handles;
int debug_handles_count;
int /*<<< orphan*/
memcpy(TYPE_1__ *, TYPE_1__ *, int);

int remove_debug_handle_internal(int fd) {
  int i, ii;

  for (i = 0; i < debug_handles_count; ++i) {
    if (debug_handles[i].fd == fd) {
      for (ii = i + 1; ii < debug_handles_count; ++ii)
        memcpy(&debug_handles[ii - 1], &debug_handles[ii],
               sizeof(debug_handles_t));

      --debug_handles_count;

      return 1;
    }
  }

  return 0;
}