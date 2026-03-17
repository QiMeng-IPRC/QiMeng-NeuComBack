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
  unsigned int in_stride;
};
typedef TYPE_1__ SpeexResamplerState;

/* Variables and functions */

void rubberband_resampler_get_input_stride(SpeexResamplerState *st,
                                           unsigned int *stride) {
  *stride = st->in_stride;
}