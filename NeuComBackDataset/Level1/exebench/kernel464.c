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
  scalar_t__ stream;
  scalar_t__ stream_end;
  int eof;
};
typedef TYPE_1__ vorb;
typedef int /*<<< orphan*/ uint8;

/* Variables and functions */
int /*<<< orphan*/
memcpy(int /*<<< orphan*/ *, scalar_t__, int);

int getn(vorb *z, uint8 *data, int n) {
  if (1) {
    if (z->stream + n > z->stream_end) {
      z->eof = 1;
      return 0;
    }
    memcpy(data, z->stream, n);
    z->stream += n;
    return 1;
  }
# 1361 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/Photosounder/rouziclib/refs/heads/master/rouziclib/libraries/orig/stb_vorbis.c"
}