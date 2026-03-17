#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_3__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int Xb;
  int Wb;
  int /*<<< orphan*/ NumberofBFrames;
  int /*<<< orphan*/ Nb;
};
typedef TYPE_1__ rc_quadratic;
struct TYPE_5__ {
  int /*<<< orphan*/ NumberofCodedBFrame;
};

/* Variables and functions */
int THETA;
TYPE_3__ *generic_RC;

void updateBparams(rc_quadratic *prc, int complexity) {
  prc->Xb = complexity;
  prc->Nb--;
  prc->Wb = prc->Xb / THETA;
  prc->NumberofBFrames++;
  generic_RC->NumberofCodedBFrame++;
}