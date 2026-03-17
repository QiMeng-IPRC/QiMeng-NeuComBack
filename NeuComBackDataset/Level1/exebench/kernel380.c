#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  int /*<<< orphan*/ total_size;
  int /*<<< orphan*/ len;
  int /*<<< orphan*/ _;
};
typedef TYPE_1__ aa_int;

/* Variables and functions */

void aa_int_swap(aa_int *self, aa_int *swap) {
  aa_int temp;
  temp._ = self->_;
  temp.len = self->len;
  temp.total_size = self->total_size;
  self->_ = swap->_;
  self->len = swap->len;
  self->total_size = swap->total_size;
  swap->_ = temp._;
  swap->len = temp.len;
  swap->total_size = temp.total_size;
}