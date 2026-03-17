#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct ide_timing {
  scalar_t__ setup;
  scalar_t__ act8b;
  scalar_t__ rec8b;
  scalar_t__ cyc8b;
  scalar_t__ active;
  scalar_t__ recover;
  scalar_t__ cycle;
  scalar_t__ udma;
};

/* Variables and functions */

void ide_timing_merge(struct ide_timing *a, struct ide_timing *b,
                      struct ide_timing *m, unsigned int what) {
  if (what & 0x01)
    m->setup = ((a->setup) > (b->setup) ? (a->setup) : (b->setup));
  if (what & 0x02)
    m->act8b = ((a->act8b) > (b->act8b) ? (a->act8b) : (b->act8b));
  if (what & 0x04)
    m->rec8b = ((a->rec8b) > (b->rec8b) ? (a->rec8b) : (b->rec8b));
  if (what & 0x08)
    m->cyc8b = ((a->cyc8b) > (b->cyc8b) ? (a->cyc8b) : (b->cyc8b));
  if (what & 0x10)
    m->active = ((a->active) > (b->active) ? (a->active) : (b->active));
  if (what & 0x20)
    m->recover = ((a->recover) > (b->recover) ? (a->recover) : (b->recover));
  if (what & 0x40)
    m->cycle = ((a->cycle) > (b->cycle) ? (a->cycle) : (b->cycle));
  if (what & 0x80)
    m->udma = ((a->udma) > (b->udma) ? (a->udma) : (b->udma));
}