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
  char const value;
  int codepoint;
  int next;
  scalar_t__ more;
};

/* Variables and functions */
TYPE_1__ *entities;

int html_named_entity_decode(const char *s, size_t len, size_t *consumed) {
  int codepoint = 0;
  size_t pos = 0;
  int i = 0;

  *consumed = 0;

  while (pos < len) {
    if (s[pos] == entities[i].value) {
      if (entities[i].codepoint) {
        codepoint = entities[i].codepoint;
        *consumed = pos + 1;
      }
      if (entities[i].next != 0) {
        i = entities[i].next;
        pos += 1;
        continue;
      } else {
        break;
      }
    }
    if (entities[i].more == 0) {
      break;
    }
    ++i;
  }
  return codepoint;
}