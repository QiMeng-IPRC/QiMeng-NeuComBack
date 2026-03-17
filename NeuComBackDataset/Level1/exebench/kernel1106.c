#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int /*<<< orphan*/ sample_callback;
};
struct TYPE_5__ {
  TYPE_1__ apu_output;
};
typedef int /*<<< orphan*/ GB_sample_callback_t;
typedef TYPE_2__ GB_gameboy_t;

/* Variables and functions */

void GB_apu_set_sample_callback(GB_gameboy_t *gb,
                                GB_sample_callback_t callback) {
  gb->apu_output.sample_callback = callback;
}