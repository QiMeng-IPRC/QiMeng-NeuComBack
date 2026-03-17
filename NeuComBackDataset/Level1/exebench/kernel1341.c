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
  scalar_t__ line_no;
  size_t macro;
  int tag;
};
typedef TYPE_1__ TRIGGER;

/* Variables and functions */

int set_trigger_tags(TRIGGER *triggerp) {
  int j, count, warn;
  int index[1000];

  if (triggerp == NULL)
    return 0;

  for (j = 0; j < 1000; j++)
    index[j] = 0;

  j = 0;
  warn = 0;
  while (triggerp[j].line_no > 0) {
    count = ++index[triggerp[j].macro];
    if (count > 6)
      warn = 1;
    triggerp[j].tag = ((7) < (count) ? (7) : (count));
    j++;
  }

  return warn;
}