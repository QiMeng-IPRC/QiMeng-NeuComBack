#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int column;
int /*<<< orphan*/ line;
char *yytext;

void count_no_log() {
  int i;

  for (i = 0; yytext[i] != '\0'; i++)
    if (yytext[i] == '\n') {
      column = 0;
      line++;
    } else if (yytext[i] == '\t')
      column += 8 - (column % 8);
    else
      column++;
}