#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_8__ TYPE_3__;
typedef struct TYPE_7__ TYPE_2__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_7__ {
  scalar_t__ base;
  scalar_t__ delta;
};
typedef TYPE_2__ dx_shift;
struct TYPE_6__ {
  scalar_t__ offset;
};
struct TYPE_8__ {
  scalar_t__ annotations_off;
  TYPE_1__ meta;
};
typedef TYPE_3__ DexFieldAnnotation;

/* Variables and functions */

void dxo_fieldannotation(DexFieldAnnotation *obj, dx_shift *shift) {
  do {
    if ((obj->meta.offset) >= shift->base)
      (obj->meta.offset) += shift->delta;
  } while (0);

  do {
    if ((obj->annotations_off) >= shift->base)
      (obj->annotations_off) += shift->delta;
  } while (0);
}