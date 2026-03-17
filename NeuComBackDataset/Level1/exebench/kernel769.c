#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ vector;
struct TYPE_3__ {
  int /*<<< orphan*/ rightvec;
  int /*<<< orphan*/ upvec;
  int /*<<< orphan*/ viewvec;
  int /*<<< orphan*/ center;
};
typedef TYPE_1__ camdef;

/* Variables and functions */

void getcameraposition(camdef *camera, vector *center, vector *viewvec,
                       vector *upvec, vector *rightvec) {
  *center = camera->center;
  *viewvec = camera->viewvec;
  *upvec = camera->upvec;
  *rightvec = camera->rightvec;
}