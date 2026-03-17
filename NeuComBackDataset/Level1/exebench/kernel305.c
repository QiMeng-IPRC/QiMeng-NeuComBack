#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int repmode;
  int offset;
  scalar_t__ tick_f;
  int /*<<< orphan*/ fp_tag;
};
typedef TYPE_1__ file_t;

/* Variables and functions */

void syncfile(file_t *file1, file_t *file2) {
  if (!file1->fp_tag || !file2->fp_tag)
    return;
  file1->repmode = 0;
  file2->repmode = 1;
  file2->offset = (int)(file1->tick_f - file2->tick_f);
}