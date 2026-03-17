#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int AUDIO_PlaybackBuffer_Status;

/* Variables and functions */
int audio_buffer_fill;

AUDIO_PlaybackBuffer_Status
AUDIO_PlaybackBuffer_GetStatus(AUDIO_PlaybackBuffer_Status value) {
  if (value)
    audio_buffer_fill &= ~value;
  return audio_buffer_fill;
}