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
  unsigned char imr;
};
typedef TYPE_1__ e8259_t;

/* Variables and functions */

unsigned char e8259_get_imr(e8259_t *pic) { return (pic->imr); }