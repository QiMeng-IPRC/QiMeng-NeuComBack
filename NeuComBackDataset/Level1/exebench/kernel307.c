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
  char const *program_name;
};
typedef TYPE_1__ mut_log;

/* Variables and functions */

void mut_log_prog_name(mut_log *log, char const *prog_name) {
  log->program_name = prog_name;
}