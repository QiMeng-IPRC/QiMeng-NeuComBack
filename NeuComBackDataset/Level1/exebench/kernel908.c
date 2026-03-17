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
  scalar_t__ file_pos;
  scalar_t__ eof;
  scalar_t__ in_block_pos;
  scalar_t__ in_cluster_block;
  int /*<<< orphan*/ start_cluster;
  int /*<<< orphan*/ cluster;
};
typedef TYPE_1__ mfat_stream_t;

/* Variables and functions */

void mfat_rewind_stream(mfat_stream_t *p) {
  p->cluster = p->start_cluster;
  p->in_cluster_block = 0;
  p->in_block_pos = 0;
  p->eof = 0;
  p->file_pos = 0;
}