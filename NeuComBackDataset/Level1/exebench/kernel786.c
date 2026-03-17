#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ int4;

/* Variables and functions */
int /*<<< orphan*/ op_fetchintrrpt;
int /*<<< orphan*/ op_forintrrpt;
int /*<<< orphan*/ op_startintrrpt;
scalar_t__ outofband;
scalar_t__ tptimeout;
size_t xf_forchk1;
size_t xf_forloop;
size_t xf_linefetch;
size_t xf_linestart;
size_t xf_zbfetch;
size_t xf_zbstart;
int /*<<< orphan*/ *xfer_table;

void tptimeout_set(int4 dummy_param) {

  if (tptimeout != outofband) {
    xfer_table[xf_linefetch] = op_fetchintrrpt;
    xfer_table[xf_linestart] = op_startintrrpt;
    xfer_table[xf_zbfetch] = op_fetchintrrpt;
    xfer_table[xf_zbstart] = op_startintrrpt;
    xfer_table[xf_forchk1] = op_startintrrpt;
    xfer_table[xf_forloop] = op_forintrrpt;
    outofband = tptimeout;
  }
}