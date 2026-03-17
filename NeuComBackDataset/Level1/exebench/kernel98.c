#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ FilePosition;

/* Variables and functions */
scalar_t__ SNORT_FILE_END;
scalar_t__ SNORT_FILE_FULL;
scalar_t__ SNORT_FILE_START;

void finalFilePosition(FilePosition *position) {
  if (*position == SNORT_FILE_START)
    *position = SNORT_FILE_FULL;
  else if (*position != SNORT_FILE_FULL)
    *position = SNORT_FILE_END;
}