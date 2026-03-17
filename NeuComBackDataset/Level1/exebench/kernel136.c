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
  int begin;
  int /*<<< orphan*/ count;
};
typedef TYPE_1__ shbuf_t;

/* Variables and functions */

unsigned int inc_begin(shbuf_t *s) {
  ++s->begin;
  --s->count;
  if (s->begin == 32)
    s->begin = 0;
  return s->begin;
}