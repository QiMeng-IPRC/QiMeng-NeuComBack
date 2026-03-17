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
  int /*<<< orphan*/ note_handler;
};
typedef TYPE_1__ readstat_parser_t;
typedef int /*<<< orphan*/ readstat_note_handler;
typedef int /*<<< orphan*/ readstat_error_t;

/* Variables and functions */
int /*<<< orphan*/ READSTAT_OK;

readstat_error_t readstat_set_note_handler(readstat_parser_t *parser,
                                           readstat_note_handler note_handler) {
  parser->note_handler = note_handler;
  return READSTAT_OK;
}