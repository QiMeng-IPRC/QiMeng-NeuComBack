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
  int randSeed1;
  int randSeed2;
  int previous;
};
typedef TYPE_1__ PaUtilTriangularDitherGenerator;
typedef int PaInt32;

/* Variables and functions */
float const_float_dither_scale_;

float PaUtil_GenerateFloatTriangularDither(
    PaUtilTriangularDitherGenerator *state) {
  PaInt32 current, highPass;

  state->randSeed1 = (state->randSeed1 * 196314165) + 907633515;
  state->randSeed2 = (state->randSeed2 * 196314165) + 907633515;

  current =
      (((PaInt32)state->randSeed1) >> ((sizeof(PaInt32) * 8 - (15)) + 1)) +
      (((PaInt32)state->randSeed2) >> ((sizeof(PaInt32) * 8 - (15)) + 1));

  highPass = current - state->previous;
  state->previous = current;
  return ((float)highPass) * const_float_dither_scale_;
}