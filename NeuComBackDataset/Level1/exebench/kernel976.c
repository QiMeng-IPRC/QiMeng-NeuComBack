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
  char *finish_begin;
  char *finish_end;
};
typedef TYPE_1__ ticker_t;

/* Variables and functions */

void ticker_add_finish_label(ticker_t *const ticker, char *const finish_begin,
                             char *const finish_end) {
  ticker->finish_begin = finish_begin;
  ticker->finish_end = finish_end;
}