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
  int /*<<< orphan*/ content;
  scalar_t__ exists;
};
typedef TYPE_1__ tile_t;
typedef int /*<<< orphan*/ tile_content_t;

/* Variables and functions */

void tile_set_content(tile_t *t, tile_content_t content) {
  if (t->exists) {
    t->content = content;
  }
}