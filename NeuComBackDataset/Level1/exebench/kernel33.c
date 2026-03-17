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
  size_t bind_size;
};
typedef TYPE_1__ MdbHandle;

/* Variables and functions */

void mdb_set_bind_size(MdbHandle *mdb, size_t bind_size) {
  mdb->bind_size = bind_size;
}