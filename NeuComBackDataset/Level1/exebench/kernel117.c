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
  int silence_decibels;
};
typedef TYPE_1__ mpgedit_pcmlevel_t;

/* Variables and functions */

void mpgedit_pcmlevel_set_silence_decibels(mpgedit_pcmlevel_t *pcm,
                                           int decibels) {
  if (pcm) {
    pcm->silence_decibels = decibels;
  }
}