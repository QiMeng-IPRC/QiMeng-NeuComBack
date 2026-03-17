#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  size_t cbCur;
};
struct TYPE_4__ {
  TYPE_1__ buf;
};
struct WMPStream {
  TYPE_2__ state;
};
typedef int /*<<< orphan*/ ERR;

/* Variables and functions */

ERR SetPosWS_Memory(struct WMPStream *pWS, size_t offPos) {
  ERR err = 0;

  pWS->state.buf.cbCur = offPos;

  return err;
}