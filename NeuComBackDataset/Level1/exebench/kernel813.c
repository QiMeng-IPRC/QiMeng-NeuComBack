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
  int escr_data;
};
typedef TYPE_1__ prfcnt_event_t;

/* Variables and functions */

void prfcnt_cntr_set_t0(prfcnt_event_t *event) {
  event->escr_data |= (1 << (2));
}