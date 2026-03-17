#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int u8;
struct TYPE_3__ {
  int first_word;
};
typedef TYPE_1__ geneve_header_t;

/* Variables and functions */

void vnet_set_geneve_options_len(geneve_header_t *h, u8 len) {
  h->first_word &= ~(0x3F000000);
  h->first_word |= ((len << 24) & 0x3F000000);
}