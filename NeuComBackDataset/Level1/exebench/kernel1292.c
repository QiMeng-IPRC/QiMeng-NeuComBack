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
  int empty;
  scalar_t__ timestamp;
  scalar_t__ string;
};

/* Variables and functions */
TYPE_1__ *Q;

void Q_init() {
  int i;
  for (i = 0; i < 3; i++) {
    Q[i].string = 0;
    Q[i].empty = 1;
    Q[i].timestamp = 0;
  }
}