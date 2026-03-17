#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct dictionary {
  size_t end;
  size_t pos;
  size_t limit;
};

/* Variables and functions */

void dict_limit(struct dictionary *dict, size_t out_max) {
  if (dict->end - dict->pos <= out_max)
    dict->limit = dict->end;
  else
    dict->limit = dict->pos + out_max;
}