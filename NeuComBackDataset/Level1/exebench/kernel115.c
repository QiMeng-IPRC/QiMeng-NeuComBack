#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  int q0;
  int q1;
  int q2;
  int q3;
};
typedef TYPE_1__ fpQuaternion_t;

/* Variables and functions */

fpQuaternion_t *quaternionMultiply(fpQuaternion_t *result,
                                   const fpQuaternion_t *a,
                                   const fpQuaternion_t *b) {
  fpQuaternion_t p;

  p.q0 = a->q0 * b->q0 - a->q1 * b->q1 - a->q2 * b->q2 - a->q3 * b->q3;
  p.q1 = a->q0 * b->q1 + a->q1 * b->q0 + a->q2 * b->q3 - a->q3 * b->q2;
  p.q2 = a->q0 * b->q2 - a->q1 * b->q3 + a->q2 * b->q0 + a->q3 * b->q1;
  p.q3 = a->q0 * b->q3 + a->q1 * b->q2 - a->q2 * b->q1 + a->q3 * b->q0;

  *result = p;
  return result;
}