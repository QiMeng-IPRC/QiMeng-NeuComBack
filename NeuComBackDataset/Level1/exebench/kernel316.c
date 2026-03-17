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
struct TYPE_4__ {
  int /*<<< orphan*/ env;
  int /*<<< orphan*/ ended;
  int /*<<< orphan*/ looped;
};
struct pmd_part {
  TYPE_2__ loop;
};
struct TYPE_3__ {
  int /*<<< orphan*/ env;
  int /*<<< orphan*/ ended;
  int /*<<< orphan*/ looped;
};
struct driver_pmd {
  TYPE_1__ loop;
};

/* Variables and functions */

void pmd_part_loop_check(struct driver_pmd *pmd, struct pmd_part *part) {
  pmd->loop.looped &= part->loop.looped;
  pmd->loop.ended &= part->loop.ended;
  pmd->loop.env &= part->loop.env;
}