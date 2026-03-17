#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_3__;
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  scalar_t__ x;
  scalar_t__ y;
};
struct TYPE_4__ {
  TYPE_2__ position;
};
struct TYPE_6__ {
  TYPE_1__ mouse;
};
typedef scalar_t__ GWint;
typedef scalar_t__ GWfloat;

/* Variables and functions */
TYPE_3__ g_gwContext;

void gwTestMouseHit(GWint *res, GWfloat x, GWfloat y, GWfloat w, GWfloat h) {
  if (res != NULL)
    *res = (GWint)(g_gwContext.mouse.position.x >= x &&
                   g_gwContext.mouse.position.y >= y &&
                   g_gwContext.mouse.position.x <= x + w &&
                   g_gwContext.mouse.position.y <= y + h);
}