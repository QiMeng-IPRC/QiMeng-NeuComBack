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
  char *name_wback;
  int /*<<< orphan*/ wbackf;
};
typedef TYPE_1__ d4cache;

/* Variables and functions */
int /*<<< orphan*/ d4wback_never;

void d4init_wback_never(d4cache *c) {
  c->wbackf = d4wback_never;
  c->name_wback = "never";
}