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
  int /*<<< orphan*/ options;
};
typedef TYPE_1__ website_t;

/* Variables and functions */
int /*<<< orphan*/ default_website_options;

void website_options_reset(website_t *website) {
  website->options = default_website_options;
}