#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_12__ TYPE_7__;
typedef struct TYPE_11__ TYPE_6__;
typedef struct TYPE_10__ TYPE_5__;
typedef struct TYPE_9__ TYPE_2__;
typedef struct TYPE_8__ TYPE_1__;

/* Type definitions */
struct TYPE_12__ {
  int AMODE;
  int MODE;
  int CHEN;
};
struct TYPE_11__ {
  int FORCE;
};
struct TYPE_10__ {
  int AMODE;
  int MODE;
  int CHEN;
};
struct TYPE_9__ {
  int /*<<< orphan*/ TXBufferOffset;
};
struct TYPE_8__ {
  scalar_t__ StartOffset;
  scalar_t__ DMAOffset;
  scalar_t__ BlockLen;
};
typedef TYPE_1__ SD_Data_Block;
typedef TYPE_2__ SD_Card;

/* Variables and functions */
scalar_t__ DMA2CNT;
TYPE_7__ DMA2CONbits;
TYPE_6__ DMA2REQbits;
int /*<<< orphan*/ DMA2STA;
scalar_t__ DMA3CNT;
TYPE_5__ DMA3CONbits;
scalar_t__ DMA3STA;
int SD_DMA_TXBuffer;

void SD_DMA_ReceiveBlock(SD_Card *card, SD_Data_Block *data) {
  SD_DMA_TXBuffer = 0xff;

  DMA2CNT = data->BlockLen - 1;
  DMA2STA = card->TXBufferOffset;
  DMA2CONbits.AMODE = 0b01;
  DMA2CONbits.MODE = 0b01;

  DMA3CONbits.AMODE = 0b00;
  DMA3CONbits.MODE = 0b01;
  DMA3CNT = data->BlockLen - 1;
  DMA3STA = data->DMAOffset + data->StartOffset;

  DMA2CONbits.CHEN = 1;
  DMA3CONbits.CHEN = 1;

  DMA2REQbits.FORCE = 1;
}