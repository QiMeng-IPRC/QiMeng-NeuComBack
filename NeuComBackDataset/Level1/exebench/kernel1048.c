#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  int mode;
  int /*<<< orphan*/ attribute;
  int /*<<< orphan*/ cursor;
};
struct terminal {
  int mode;
  TYPE_1__ state;
  int /*<<< orphan*/ attribute;
  int /*<<< orphan*/ cursor;
};

/* Variables and functions */
int MODE_ORIGIN;

void restore_state(struct terminal *term) {

  if (term->state.mode & MODE_ORIGIN)
    term->mode |= MODE_ORIGIN;
  else
    term->mode &= ~MODE_ORIGIN;
  term->cursor = term->state.cursor;
  term->attribute = term->state.attribute;
}