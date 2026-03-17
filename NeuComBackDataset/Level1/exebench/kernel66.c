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
  int /*<<< orphan*/ on_metadata_tag;
};
typedef TYPE_1__ flv_parser;

/* Variables and functions */
int /*<<< orphan*/ json_on_metadata_tag_only;

void dump_json_setup_metadata_dump(flv_parser *parser) {
  if (parser != NULL) {
    parser->on_metadata_tag = json_on_metadata_tag_only;
  }
}