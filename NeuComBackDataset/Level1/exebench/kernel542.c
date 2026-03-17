#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_9__ TYPE_4__;
typedef struct TYPE_8__ TYPE_3__;
typedef struct TYPE_7__ TYPE_2__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_8__ {
  float x;
  float y;
  float z;
  float a;
  float e;
  float r;
};
struct TYPE_7__ {
  scalar_t__ x;
  scalar_t__ y;
  scalar_t__ z;
  scalar_t__ a;
  scalar_t__ e;
  scalar_t__ r;
  int /*<<< orphan*/ unit_type;
};
struct TYPE_6__ {
  scalar_t__ x;
  scalar_t__ y;
  scalar_t__ z;
  scalar_t__ a;
  scalar_t__ e;
  scalar_t__ r;
};
struct TYPE_9__ {
  TYPE_3__ speed;
  TYPE_2__ real;
  TYPE_1__ ideal;
};
typedef TYPE_4__ delta_position_t;

/* Variables and functions */
int /*<<< orphan*/ ORL_CART_POSITION;

void apply_delta_position(delta_position_t *px_Delta_position, float override) {
  px_Delta_position->real.unit_type = ORL_CART_POSITION;
  if (((px_Delta_position->real.x < px_Delta_position->ideal.x) &&
       (px_Delta_position->speed.x > 0)) ||
      ((px_Delta_position->real.x > px_Delta_position->ideal.x) &&
       (px_Delta_position->speed.x < 0)))
    px_Delta_position->real.x += px_Delta_position->speed.x * override;
  if (((px_Delta_position->real.y < px_Delta_position->ideal.y) &&
       (px_Delta_position->speed.y > 0)) ||
      ((px_Delta_position->real.y > px_Delta_position->ideal.y) &&
       (px_Delta_position->speed.y < 0)))
    px_Delta_position->real.y += px_Delta_position->speed.y * override;
  if (((px_Delta_position->real.z < px_Delta_position->ideal.z) &&
       (px_Delta_position->speed.z > 0)) ||
      ((px_Delta_position->real.z > px_Delta_position->ideal.z) &&
       (px_Delta_position->speed.z < 0)))
    px_Delta_position->real.z += px_Delta_position->speed.z * override;
  if (((px_Delta_position->real.a < px_Delta_position->ideal.a) &&
       (px_Delta_position->speed.a > 0)) ||
      ((px_Delta_position->real.a > px_Delta_position->ideal.a) &&
       (px_Delta_position->speed.a < 0)))
    px_Delta_position->real.a += px_Delta_position->speed.a * override;
  if (((px_Delta_position->real.e < px_Delta_position->ideal.e) &&
       (px_Delta_position->speed.e > 0)) ||
      ((px_Delta_position->real.e > px_Delta_position->ideal.e) &&
       (px_Delta_position->speed.e < 0)))
    px_Delta_position->real.e += px_Delta_position->speed.e * override;
  if (((px_Delta_position->real.r < px_Delta_position->ideal.r) &&
       (px_Delta_position->speed.r > 0)) ||
      ((px_Delta_position->real.r > px_Delta_position->ideal.r) &&
       (px_Delta_position->speed.r < 0)))
    px_Delta_position->real.r += px_Delta_position->speed.r * override;
}