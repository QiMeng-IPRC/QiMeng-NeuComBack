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
  int id;
  int mask;
};
typedef TYPE_1__ at_command_t;

/* Variables and functions */
int AT_CGMM;

int parse_cgmm(const char *string, int position, at_command_t *at_command) {

  at_command->id = AT_CGMM;
  at_command->mask = 0x0000;
  return at_command->id;
}