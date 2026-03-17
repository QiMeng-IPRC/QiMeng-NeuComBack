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
  int a;
  int b;
  int c;
  int d;
};
typedef TYPE_1__ Elf32_Addr;

/* Variables and functions */

void elf32_sethalf(Elf32_Addr *val, int v) {
  val->a = v & 0xFF;
  val->b = (v >> 8) & 0xFF;
  val->c = (v >> 16) & 0xFF;
  val->d = (v >> 24) & 0xFF;
}