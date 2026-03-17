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
  int vol;
  size_t sym;
  int /*<<< orphan*/ price;
};
typedef TYPE_1__ tuple;

/* Variables and functions */
int /*<<< orphan*/ *table;

void process(tuple *in) {
  if (in->vol == -1) {

    table[in->sym] *= in->price;
  } else {

    in->price *= table[in->sym];
  }
}