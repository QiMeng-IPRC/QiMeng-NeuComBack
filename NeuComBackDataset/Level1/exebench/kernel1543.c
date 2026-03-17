#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int tm_year;
};
struct TYPE_5__ {
  TYPE_1__ tm;
};
typedef TYPE_2__ date_t;

/* Variables and functions */

void fix_iso8601(date_t *date) {
  if (date->tm.tm_year < 1970)
    date->tm.tm_year += 66;
}