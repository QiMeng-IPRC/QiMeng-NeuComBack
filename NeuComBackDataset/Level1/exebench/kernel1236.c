#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  scalar_t__ *times;
};

/* Variables and functions */
TYPE_1__ con;

void Con_ClearNotify(void) {
  int i;

  for (i = 0; i < 4; ++i) {
    con.times[i] = 0;
  }
}