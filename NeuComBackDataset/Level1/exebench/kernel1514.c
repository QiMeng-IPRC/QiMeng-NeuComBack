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
  char *buffer;
  scalar_t__ position;
};
typedef TYPE_1__ YLispLexer;

/* Variables and functions */

void ylisp_init_lexer(YLispLexer *lexer, char *buf) {
  lexer->buffer = buf;
  lexer->position = 0;
}