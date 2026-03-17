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
  int sector;
  int cfg_spt;
  scalar_t__ head;
  scalar_t__ cfg_hpc;
  int /*<<< orphan*/ cylinder;
  int /*<<< orphan*/ lba_addr;
  scalar_t__ lba;
};
typedef TYPE_1__ ide_t;

/* Variables and functions */

void ide_next_sector(ide_t *ide) {
  if (ide->lba)
    ide->lba_addr++;
  else {
    ide->sector++;
    if (ide->sector == (ide->cfg_spt + 1)) {
      ide->sector = 1;
      ide->head++;
      if (ide->head == ide->cfg_hpc) {
        ide->head = 0;
        ide->cylinder++;
      }
    }
  }
}