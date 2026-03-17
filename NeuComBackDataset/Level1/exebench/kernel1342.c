#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
float nearestEnemyD;
float nearestEnemyX;
float nearestEnemyY;
float playerX;
float playerY;

void draw_enemy(float x, float y) {
  float d = (x - playerX) * (x - playerX) + (y - playerY) * (y - playerY);
  if (d < nearestEnemyD) {
    nearestEnemyX = x;
    nearestEnemyY = y;
    nearestEnemyD = d;
  }
}