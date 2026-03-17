#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ AUDIO_PCM_ALSA;
int /*<<< orphan*/ AUDIO_PCM_ANY;
int /*<<< orphan*/ AUDIO_PCM_DMY;
int /*<<< orphan*/ AUDIO_PCM_ESD;
int /*<<< orphan*/ AUDIO_PCM_OSS;
int /*<<< orphan*/ mode;
int mode_onlyone;

void audio_set_output_device(char c) {
  switch (c) {
  case 'o':

    mode = AUDIO_PCM_OSS;
    break;
  case 'e':

    mode = AUDIO_PCM_ESD;
    break;
  case 's':

    mode = AUDIO_PCM_ALSA;
    break;
  case '0':

    mode = AUDIO_PCM_DMY;
    break;
  default:
    mode = AUDIO_PCM_ANY;
  }

  mode_onlyone = (!0);
}