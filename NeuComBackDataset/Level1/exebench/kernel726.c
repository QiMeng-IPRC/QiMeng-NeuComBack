#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef float uint8;
struct TYPE_3__ {
  float a;
  float r;
  float g;
  float b;
};
typedef TYPE_1__ fcolor_t;

/* Variables and functions */

void get_fcolor_24(fcolor_t *c, uint8 *pixels) {
  c->a = 1.0f;
  c->r = pixels[0] / 255.0f;
  c->g = pixels[1] / 255.0f;
  c->b = pixels[2] / 255.0f;
}