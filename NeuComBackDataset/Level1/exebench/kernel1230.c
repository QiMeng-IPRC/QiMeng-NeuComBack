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
  int losspct;
};
struct TYPE_5__ {
  TYPE_1__ info;
};
typedef TYPE_2__ jitterbuf;

/* Variables and functions */

void increment_losspct(jitterbuf *jb) {
  jb->info.losspct = (100000 + 499 * jb->info.losspct) / 500;
}