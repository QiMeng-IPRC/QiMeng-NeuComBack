#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct bio {
  unsigned int bi_comp_cpu;
};

/* Variables and functions */

__attribute__((always_inline)) void bio_set_completion_cpu(struct bio *bio,
                                                           unsigned int cpu) {
  bio->bi_comp_cpu = cpu;
}