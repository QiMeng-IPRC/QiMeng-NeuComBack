#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int u8;
typedef int u32;
struct TYPE_2__ {
  int CPSR;
};

/* Variables and functions */
TYPE_1__ CPU;

u32 ror_immed(u32 value, u8 shift, u8 *carry) {
  if (shift) {

    *carry = (value & (1 << (shift - 1))) != 0;
    return ((value >> shift) | (value << (32 - shift)));

  } else {
    *carry = (CPU.CPSR & (1 << (29))) != 0;
    return value;
  }
}