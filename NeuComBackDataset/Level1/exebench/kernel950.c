#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int raw;
};
typedef int L4_Word_t;
typedef TYPE_1__ L4_Fpage_t;

/* Variables and functions */

L4_Fpage_t L4_FpageAddRightsTo(L4_Fpage_t *f, L4_Word_t accessRights) {
  f->raw |= (accessRights & (0x07));
  return *f;
}