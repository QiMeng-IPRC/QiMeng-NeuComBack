#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  int /*<<< orphan*/ getlen;
  int /*<<< orphan*/ getpos;
  int /*<<< orphan*/ seek;
  int /*<<< orphan*/ stop;
  int /*<<< orphan*/ resume;
  int /*<<< orphan*/ pause;
  int /*<<< orphan*/ play;
};

/* Variables and functions */
TYPE_1__ audeng_mp3;
int /*<<< orphan*/ audeng_mp3_getlen;
int /*<<< orphan*/ audeng_mp3_getpos;
int /*<<< orphan*/ audeng_mp3_pause;
int /*<<< orphan*/ audeng_mp3_play;
int /*<<< orphan*/ audeng_mp3_resume;
int /*<<< orphan*/ audeng_mp3_seek;
int /*<<< orphan*/ audeng_mp3_stop;

void audeng_mp3_init() {
  audeng_mp3.play = audeng_mp3_play;
  audeng_mp3.pause = audeng_mp3_pause;
  audeng_mp3.resume = audeng_mp3_resume;
  audeng_mp3.stop = audeng_mp3_stop;
  audeng_mp3.seek = audeng_mp3_seek;
  audeng_mp3.getpos = audeng_mp3_getpos;
  audeng_mp3.getlen = audeng_mp3_getlen;
}