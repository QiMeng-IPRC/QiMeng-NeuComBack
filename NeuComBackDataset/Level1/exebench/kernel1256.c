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
  size_t end;
  scalar_t__ fetch;
  scalar_t__ discard;
  scalar_t__ start;
};
struct TYPE_5__ {
  char const *str;
  size_t len;
  TYPE_1__ byteregion;
};
typedef TYPE_2__ upb_stringsrc;

/* Variables and functions */

void upb_stringsrc_reset(upb_stringsrc *s, const char *str, size_t len) {
  s->str = str;
  s->len = len;
  s->byteregion.start = 0;
  s->byteregion.discard = 0;
  s->byteregion.fetch = 0;
  s->byteregion.end = len;
}