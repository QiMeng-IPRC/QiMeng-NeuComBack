#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct PLAYER {
  int joy_snap;
  int joy_drop;
  int joy_n;
  int joy_e;
  int joy_s;
  int joy_w;
  scalar_t__ joy_stick;
};
typedef int byte;

/* Variables and functions */

void readjoy(byte action, struct PLAYER *ply) {
  int north = 0, east = 0, south = 0, west = 0;
  int snap = 0, drop = 0;

  if (action & (1 << 0))
    west = 1;

  if (action & (1 << 1))
    east = 1;

  if (action & (1 << 2))
    north = 1;

  if (action & (1 << 3))
    south = 1;

  if (action & (1 << 4))
    snap = 1;

  if (action & (1 << 5))
    drop = 1;

  ply->joy_snap = snap;
  ply->joy_drop = drop;

  if (ply->joy_stick || (north | east | south | west)) {
    ply->joy_n = north;
    ply->joy_e = east;
    ply->joy_s = south;
    ply->joy_w = west;
  }
}