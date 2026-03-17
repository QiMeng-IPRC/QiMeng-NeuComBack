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
  unsigned short gfx_flags;
};

/* Variables and functions */
TYPE_1__ *_conf;

void dm_set_gfx_flag(unsigned short flag_id, unsigned short value) {
  if (value)
    _conf->gfx_flags |= flag_id;
  else
    _conf->gfx_flags &= ~flag_id;
}