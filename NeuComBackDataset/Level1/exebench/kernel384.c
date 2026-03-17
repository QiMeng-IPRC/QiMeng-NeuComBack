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
  unsigned char indent_delta;
};
typedef TYPE_1__ WBXMLEncoder;

/* Variables and functions */

void wbxml_encoder_set_indent(WBXMLEncoder *encoder, unsigned char indent) {
  if (encoder == 0)
    return;

  encoder->indent_delta = indent;
}