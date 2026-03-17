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
  int mime_max_depth;
};
typedef TYPE_1__ zmail_parser_t;

/* Variables and functions */

int zmail_parser_set_mime_max_depth(zmail_parser_t *parser, int length) {
  parser->mime_max_depth = length;

  return 0;
}