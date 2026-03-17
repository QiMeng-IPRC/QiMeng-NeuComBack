#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ uint32;
struct TYPE_2__ {
  int /*<<< orphan*/ tsf_us;
};

/* Variables and functions */
TYPE_1__ dtm_params;

void save_tsf_us(uint32 us) { dtm_params.tsf_us = us; }