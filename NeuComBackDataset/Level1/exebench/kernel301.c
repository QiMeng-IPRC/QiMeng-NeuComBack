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
  int /*<<< orphan*/ halt;
  int /*<<< orphan*/ task_free;
  int /*<<< orphan*/ write;
  int /*<<< orphan*/ handle_dl;
  int /*<<< orphan*/ handle_timeout;
  int /*<<< orphan*/ probe;
};

/* Variables and functions */
int /*<<< orphan*/ do_sniff_free;
int /*<<< orphan*/ do_sniff_halt;
int /*<<< orphan*/ do_sniff_handle_dl;
int /*<<< orphan*/ do_sniff_handle_timeout;
int /*<<< orphan*/ do_sniff_probe;
int /*<<< orphan*/ do_sniff_write;
TYPE_1__ sniff_funcs;

int scamper_do_sniff_init() {
  sniff_funcs.probe = do_sniff_probe;
  sniff_funcs.handle_timeout = do_sniff_handle_timeout;
  sniff_funcs.handle_dl = do_sniff_handle_dl;
  sniff_funcs.write = do_sniff_write;
  sniff_funcs.task_free = do_sniff_free;
  sniff_funcs.halt = do_sniff_halt;

  return 0;
}