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
  float tv_sec;
  scalar_t__ tv_usec;
};
struct duration {
  TYPE_1__ elapsed;
};

/* Variables and functions */

float duration_elapsed(const struct duration *duration) {
  float t = duration->elapsed.tv_sec;
  t += (float)duration->elapsed.tv_usec / 1000000.0;
  return t;
}