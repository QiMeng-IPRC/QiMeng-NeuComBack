#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ raptor_sax2_characters_handler;
struct TYPE_3__ {
  int /*<<< orphan*/ characters_handler;
};
typedef TYPE_1__ raptor_sax2;

/* Variables and functions */

void raptor_sax2_set_characters_handler(
    raptor_sax2 *sax2, raptor_sax2_characters_handler handler) {
  sax2->characters_handler = handler;
}