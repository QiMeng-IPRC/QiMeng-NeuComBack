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
  scalar_t__ file_size;
  scalar_t__ calculated_file_size;
};
typedef TYPE_1__ file_recovery_t;

/* Variables and functions */

void file_check_size_lax(file_recovery_t *file_recovery) {
  if (file_recovery->file_size > file_recovery->calculated_file_size)
    file_recovery->file_size = file_recovery->calculated_file_size;
}