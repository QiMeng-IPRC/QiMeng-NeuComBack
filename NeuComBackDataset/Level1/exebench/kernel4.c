#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int last_err;
int last_type;

void cgio_error_code(int *errcode, int *file_type) {
  *errcode = last_err;
  if (last_err <= 0)
    *file_type = 0;
  else
    *file_type = last_type;
}