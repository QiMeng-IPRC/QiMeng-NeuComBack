#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct rand_struct {
  int max_value;
  double max_value_dbl;
  unsigned long seed1;
  unsigned long seed2;
};

/* Variables and functions */

void randominit(struct rand_struct *rand_st, unsigned long seed1,
                unsigned long seed2) {

  rand_st->max_value = 0x3FFFFFFFL;
  rand_st->max_value_dbl = (double)rand_st->max_value;
  rand_st->seed1 = seed1 % rand_st->max_value;
  rand_st->seed2 = seed2 % rand_st->max_value;
}