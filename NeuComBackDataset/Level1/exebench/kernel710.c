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
  int /*<<< orphan*/ downLeft;
  int /*<<< orphan*/ downRight;
  int /*<<< orphan*/ upRight;
  int /*<<< orphan*/ upLeft;
  int /*<<< orphan*/ right;
  int /*<<< orphan*/ left;
  int /*<<< orphan*/ down;
  int /*<<< orphan*/ up;
  int /*<<< orphan*/ quickLoad;
  int /*<<< orphan*/ quickSave;
  int /*<<< orphan*/ status;
  int /*<<< orphan*/ fire;
  int /*<<< orphan*/ pogo;
  int /*<<< orphan*/ jump;
};

/* Variables and functions */
int /*<<< orphan*/ IN_SC_Alt;
int /*<<< orphan*/ IN_SC_Control;
int /*<<< orphan*/ IN_SC_DownArrow;
int /*<<< orphan*/ IN_SC_End;
int /*<<< orphan*/ IN_SC_Enter;
int /*<<< orphan*/ IN_SC_F5;
int /*<<< orphan*/ IN_SC_F9;
int /*<<< orphan*/ IN_SC_Home;
int /*<<< orphan*/ IN_SC_LeftArrow;
int /*<<< orphan*/ IN_SC_PgDown;
int /*<<< orphan*/ IN_SC_PgUp;
int /*<<< orphan*/ IN_SC_RightArrow;
int /*<<< orphan*/ IN_SC_Space;
int /*<<< orphan*/ IN_SC_UpArrow;
TYPE_1__ in_kbdControls;

void INL_SetupKbdControls() {
  in_kbdControls.jump = IN_SC_Control;
  in_kbdControls.pogo = IN_SC_Alt;
  in_kbdControls.fire = IN_SC_Space;

  in_kbdControls.status = IN_SC_Enter;

  in_kbdControls.quickSave = IN_SC_F5;
  in_kbdControls.quickLoad = IN_SC_F9;

  in_kbdControls.up = IN_SC_UpArrow;
  in_kbdControls.down = IN_SC_DownArrow;
  in_kbdControls.left = IN_SC_LeftArrow;
  in_kbdControls.right = IN_SC_RightArrow;
  in_kbdControls.upLeft = IN_SC_Home;
  in_kbdControls.upRight = IN_SC_PgUp;
  in_kbdControls.downRight = IN_SC_PgDown;
  in_kbdControls.downLeft = IN_SC_End;
}