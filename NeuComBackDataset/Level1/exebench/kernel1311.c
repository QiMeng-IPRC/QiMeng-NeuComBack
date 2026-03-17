#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct picolParser {
  char *start;
  char *p;
  char *end;
  int /*<<< orphan*/ type;
  int /*<<< orphan*/ len;
};

/* Variables and functions */
int PICOL_OK;
int /*<<< orphan*/ PT_EOL;

int picolParseEol(struct picolParser *p) {
  p->start = p->p;
  while (*p->p == ' ' || *p->p == '\t' || *p->p == '\n' || *p->p == '\r' ||
         *p->p == ';') {
    p->p++;
    p->len--;
  }
  p->end = p->p - 1;
  p->type = PT_EOL;
  return PICOL_OK;
}