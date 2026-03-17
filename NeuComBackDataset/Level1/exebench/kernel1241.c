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
  unsigned long idx_read;
  unsigned long buf_sz;
};
typedef TYPE_1__ BCMLOG_Fifo_t;

/* Variables and functions */

unsigned long BCMLOG_FifoRemove(BCMLOG_Fifo_t *pFifo, unsigned long rmSize) {
  unsigned long numRemoved = 0;
# 154 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/sembre/kernel_totoro_update3/refs/heads/master/modules/drivers/char/brcm/fuse_log/fifo.c"
  numRemoved = rmSize;

  pFifo->idx_read += numRemoved;
  pFifo->idx_read %= pFifo->buf_sz;

  return numRemoved;
}