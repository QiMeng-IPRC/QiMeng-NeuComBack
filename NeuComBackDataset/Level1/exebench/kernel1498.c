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
  int /*<<< orphan*/ read_memory_callback;
};
typedef int /*<<< orphan*/ GB_read_memory_callback_t;
typedef TYPE_1__ GB_gameboy_t;

/* Variables and functions */

void GB_set_read_memory_callback(GB_gameboy_t *gb,
                                 GB_read_memory_callback_t callback) {
  gb->read_memory_callback = callback;
}