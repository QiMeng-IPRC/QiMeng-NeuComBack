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
  unsigned int cell_color_red;
  unsigned int cell_color_green;
  unsigned int cell_color_blue;
};
typedef TYPE_1__ Configuration;

/* Variables and functions */

void set_cell_color(Configuration *conf, unsigned int alive_cell_color) {
  conf->cell_color_red = (alive_cell_color & 0xFF0000) >> 16;
  conf->cell_color_green = (alive_cell_color & 0x00FF00) >> 8;
  conf->cell_color_blue = (alive_cell_color & 0x0000FF);
}