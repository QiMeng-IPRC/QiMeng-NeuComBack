#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  int w;
  int x;
  int y;
  int z;
};
typedef TYPE_1__ quat_t;

/* Variables and functions */

void qtMul(const quat_t *qL, const quat_t *qR, quat_t *qq) {
  qq->w = qL->w * qR->w - qL->x * qR->x - qL->y * qR->y - qL->z * qR->z;
  qq->x = qL->w * qR->x + qL->x * qR->w + qL->y * qR->z - qL->z * qR->y;
  qq->y = qL->w * qR->y + qL->y * qR->w + qL->z * qR->x - qL->x * qR->z;
  qq->z = qL->w * qR->z + qL->z * qR->w + qL->x * qR->y - qL->y * qR->x;
}