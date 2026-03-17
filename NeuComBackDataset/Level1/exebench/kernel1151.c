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
  scalar_t__ fragment;
  int /*<<< orphan*/ state;
};
typedef TYPE_1__ ws_parser_t;

/* Variables and functions */
int /*<<< orphan*/ S_OPCODE;

void ws_parser_init(ws_parser_t *parser) {
  parser->state = S_OPCODE;
  parser->fragment = 0;
}