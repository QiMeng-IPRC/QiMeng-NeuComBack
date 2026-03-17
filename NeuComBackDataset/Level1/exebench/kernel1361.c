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
  int prevuser;
  int curuser;
  int PS;
  int /*<<< orphan*/ KSP;
  int /*<<< orphan*/ *R;
  int /*<<< orphan*/ USP;
};

/* Variables and functions */
TYPE_1__ cpu;

void switchmode(const int newm) {
  cpu.prevuser = cpu.curuser;
  cpu.curuser = newm;
  if (cpu.prevuser) {
    cpu.USP = cpu.R[6];
  } else {
    cpu.KSP = cpu.R[6];
  }
  if (cpu.curuser) {
    cpu.R[6] = cpu.USP;
  } else {
    cpu.R[6] = cpu.KSP;
  }
  cpu.PS &= 0007777;
  if (cpu.curuser) {
    cpu.PS |= (1 << 15) | (1 << 14);
  }
  if (cpu.prevuser) {
    cpu.PS |= (1 << 13) | (1 << 12);
  }
}