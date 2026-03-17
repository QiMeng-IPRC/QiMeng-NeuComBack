#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct z26_state {
  int DataBus;
  int VSyncFlag;
  int PrevLinesInFrame;
  int LinesInFrame;
  int ScanLine;
  int /*<<< orphan*/ Frame;
};

/* Variables and functions */

void H_VSYNC(struct z26_state *s) {

  if (s->DataBus & 0x02) {

    if (s->VSyncFlag)
      return;

    s->PrevLinesInFrame = s->LinesInFrame;
    s->LinesInFrame = s->ScanLine - 1;
    s->ScanLine = 1;
    if (s->LinesInFrame > 3)
      s->Frame++;
  }
  s->VSyncFlag = s->DataBus & 0x02;
}