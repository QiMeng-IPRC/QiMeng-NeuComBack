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
  int frames_left;
};
typedef TYPE_1__ osd_animation_t;

/* Variables and functions */

void osd_animation_set_timeout(osd_animation_t *osda, int timeout) {
  osda->frames_left = timeout;
}