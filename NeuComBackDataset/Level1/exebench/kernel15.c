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
  int dead_line;
};
typedef TYPE_1__ Job;

/* Variables and functions */

void setDeadLine_Job(Job *job, int dead_line) {
  if (job == NULL)
    return;
  job->dead_line = dead_line;
}