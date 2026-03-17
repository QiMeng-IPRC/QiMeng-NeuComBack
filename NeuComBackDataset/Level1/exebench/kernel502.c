#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct TFrame_LDAQCMD_ENC_Start {
  int header;
  int len;
  int tail;
  int /*<<< orphan*/ opcode;
};

/* Variables and functions */
int /*<<< orphan*/ FRAMECMD_ENC_START;

void TFrame_LDAQCMD_ENC_Start_init(struct TFrame_LDAQCMD_ENC_Start *f) {
  f->header = 0x69;
  f->opcode = FRAMECMD_ENC_START;
  f->len = sizeof(struct TFrame_LDAQCMD_ENC_Start) - 4;
  f->tail = 0x96;
}