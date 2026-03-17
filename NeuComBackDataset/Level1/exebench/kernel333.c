#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
struct TYPE_5__ {
  int der;
  int pos;
};
typedef TYPE_1__ bullet;
struct TYPE_6__ {
  char c;
};
typedef TYPE_2__ block;

/* Variables and functions */

void generate_shots(block *area, int *cnt_shots, bullet *shots, int act,
                    int handicap, int der) {
  int movement = (der) ? 1 : -1;
  if (area[act + movement].c != '-') {
    if (*cnt_shots < handicap) {
      shots[*cnt_shots].der = der;
      shots[*cnt_shots].pos = act + movement;
      area[shots[(*cnt_shots)++].pos].c = '-';
    }
  }
}