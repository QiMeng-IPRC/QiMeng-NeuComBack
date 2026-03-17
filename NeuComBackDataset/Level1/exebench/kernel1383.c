#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct runsummary {
  int dummy;
};
struct suitereport {
  struct runsummary summary;
};

/* Variables and functions */

void suitereport_add_summary(struct suitereport *self,
                             const struct runsummary *summary) {
  if (!self)
    return;

  self->summary = *summary;
}