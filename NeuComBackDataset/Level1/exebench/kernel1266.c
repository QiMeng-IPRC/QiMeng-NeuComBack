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
struct TYPE_5__ {
  scalar_t__ posX;
};
struct TYPE_4__ {
  scalar_t__ posX;
  int /*<<< orphan*/ xDirection;
};
typedef TYPE_1__ CK_object;

/* Variables and functions */
int /*<<< orphan*/ IN_motion_Left;
int /*<<< orphan*/ IN_motion_Right;
TYPE_2__ *ck_keenObj;

void CK4_ArachnutSearch(CK_object *obj) {
  obj->xDirection =
      obj->posX < ck_keenObj->posX ? IN_motion_Right : IN_motion_Left;
}