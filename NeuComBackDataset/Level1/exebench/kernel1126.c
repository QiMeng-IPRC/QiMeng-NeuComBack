#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  char const *input;
  unsigned int input_length;
};
struct TYPE_5__ {
  TYPE_1__ prepare;
};
typedef TYPE_2__ sam_memory;

/* Variables and functions */

void SetInput(sam_memory *sam, const char *_input, unsigned int l) {
  sam->prepare.input = _input;
  sam->prepare.input_length = l;
}