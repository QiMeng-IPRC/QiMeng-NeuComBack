#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct MidiParser {
  int /*<<< orphan*/ noteon;
};
typedef int /*<<< orphan*/ midi_noteonT;

/* Variables and functions */

void midi_set_noteon_handler(struct MidiParser *self, midi_noteonT handler) {
  self->noteon = handler;
}