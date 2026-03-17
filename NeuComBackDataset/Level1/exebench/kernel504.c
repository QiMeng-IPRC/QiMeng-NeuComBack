#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int /*<<< orphan*/ cb;
};
typedef int /*<<< orphan*/ MidiPlayerCallbacks_t;
typedef TYPE_1__ MIDI_PLAYER;

/* Variables and functions */
int /*<<< orphan*/
memset(TYPE_1__ *, int /*<<< orphan*/, int);

void midiplayer_init(MIDI_PLAYER *mpl, MidiPlayerCallbacks_t callbacks) {
  memset(mpl, 0, sizeof(MIDI_PLAYER));
  mpl->cb = callbacks;
}