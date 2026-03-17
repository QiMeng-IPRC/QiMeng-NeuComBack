#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  int pos_x;
  int x_dir;
  int pos_y;
  int y_dir;
  int pos_z;
  int z_dir;
  int max_x;
  int max_y;
  int max_z;
};

/* Variables and functions */
TYPE_1__ *g_bola;

void move_ball() {
  int next_x = g_bola->pos_x + g_bola->x_dir;
  int next_y = g_bola->pos_y + g_bola->y_dir;
  int next_z = g_bola->pos_z + g_bola->z_dir;

  if (next_x >= 0 && next_x <= g_bola->max_x) {
    g_bola->pos_x = next_x;
  }
  if (next_y >= 0 && next_y <= g_bola->max_y) {
    g_bola->pos_y = next_y;
  }
  if (next_z >= 0 && next_z <= g_bola->max_z) {
    g_bola->pos_z = next_z;
  }
}