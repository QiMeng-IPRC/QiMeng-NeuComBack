#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  char *p;
  int len;
};
typedef TYPE_1__ string;

/* Variables and functions */

void split(string what, char *delimiter, string *l, string *r) {

  l->p = what.p;
  l->len = delimiter - what.p;

  r->p = delimiter + 1;
  r->len = what.len - (delimiter - what.p) - 1;
}