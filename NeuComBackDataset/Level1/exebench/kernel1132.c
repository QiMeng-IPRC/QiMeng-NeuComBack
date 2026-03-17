#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct mmli_context {
  int octave;
  int whole;
  double dmul;
  double fill;
  int oct_track_p;
  int oct_override_p;
  int /*<<< orphan*/ last_pitch;
  scalar_t__ tail;
};

/* Variables and functions */
int /*<<< orphan*/ INT_MIN;

void mmli_init(struct mmli_context *c) {
  c->tail = 0;
  c->octave = (4);
  c->whole = (60 / (.25 * ((120))));
  c->dmul = .25;
  c->fill = .125 * 7;
  c->last_pitch = INT_MIN;
  c->oct_track_p = 1;
  c->oct_override_p = 1;
}