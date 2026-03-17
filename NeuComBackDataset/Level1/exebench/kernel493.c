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
  int start_pressed;
  int select_pressed;
  int option_pressed;
  int internal_speaker;
};

/* Variables and functions */
TYPE_1__ gtia;

void gtia_write_console(unsigned int value) {

  gtia.start_pressed = value & 0x1 ? 1 : 0;
  gtia.select_pressed = value & 0x2 ? 1 : 0;
  gtia.option_pressed = value & 0x4 ? 1 : 0;
  gtia.internal_speaker = value & 0x8 ? 1 : 0;
}