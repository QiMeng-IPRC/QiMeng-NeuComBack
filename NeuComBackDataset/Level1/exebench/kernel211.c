#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ modifier_t;
struct TYPE_3__ {
  int /*<<< orphan*/ modifier_equip;
};
typedef TYPE_1__ chr_t;
typedef int bool_t;

/* Variables and functions */

bool_t get_modifier_equip(chr_t *chr, modifier_t *m) {
  if (chr == NULL)
    return 0;
  if (m == NULL)
    return 0;

  *m = chr->modifier_equip;

  return 1;
}