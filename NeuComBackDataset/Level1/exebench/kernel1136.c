#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ mpg_ssize_t;
struct TYPE_3__ {
  int /*<<< orphan*/ firstpos;
  int /*<<< orphan*/ pos;
};
typedef TYPE_1__ bufferchain_t;

/* Variables and functions */
int /*<<< orphan*/ MPG123_NEED_MORE;

mpg_ssize_t bc_need_more(bufferchain_t *bc) {

  bc->pos = bc->firstpos;

  return MPG123_NEED_MORE;
}