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
  scalar_t__ plainchar;
  int /*<<< orphan*/ step;
};
typedef TYPE_1__ htp_base64_decoder;

/* Variables and functions */
int /*<<< orphan*/ step_a;

void htp_base64_decoder_init(htp_base64_decoder *decoder) {
  decoder->step = step_a;
  decoder->plainchar = 0;
}