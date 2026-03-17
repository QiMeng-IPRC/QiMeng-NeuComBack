#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct dma_desc {
  int des1;
};

/* Variables and functions */
int TDES1_BUFFER1_SIZE_MASK;

void norm_set_tx_desc_len_on_chain(struct dma_desc *p, int len) {
  p->des1 |= len & TDES1_BUFFER1_SIZE_MASK;
}