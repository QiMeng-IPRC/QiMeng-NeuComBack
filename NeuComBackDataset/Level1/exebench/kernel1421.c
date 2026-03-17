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
  scalar_t__ count;
};
typedef TYPE_1__ gentity_t;

/* Variables and functions */

void plane_AIScript_AlertEntity(gentity_t *ent) {

  ent->count--;

  if (ent->count <= 0) {
    ent->count = 0;
  }
}