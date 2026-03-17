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
  scalar_t__ map;
  int /*<<< orphan*/ len;
};
typedef TYPE_1__ Cdb;

/* Variables and functions */
int /*<<< orphan*/
munmap(scalar_t__, int /*<<< orphan*/);

void cdb_close(Cdb *cdb) {
  munmap(cdb->map, cdb->len);
  cdb->map = 0;
}