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
  int ADDRCTRL;
};
typedef TYPE_1__ DMA_CH_t;
typedef int DMA_CH_SRCRELOAD_t;
typedef int DMA_CH_SRCDIR_t;
typedef int DMA_CH_DESTRELOAD_t;
typedef int DMA_CH_DESTDIR_t;

/* Variables and functions */

void dma_address_ctrl(volatile DMA_CH_t *dma_ch, DMA_CH_SRCRELOAD_t s_reload,
                      DMA_CH_SRCDIR_t s_addrm, DMA_CH_DESTRELOAD_t d_reload,
                      DMA_CH_DESTDIR_t d_addrm) {
  dma_ch->ADDRCTRL = s_reload | s_addrm | d_reload | d_addrm;
}