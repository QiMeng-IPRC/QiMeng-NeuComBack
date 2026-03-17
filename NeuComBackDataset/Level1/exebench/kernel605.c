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
  scalar_t__ comment_len;
  scalar_t__ value_len;
};
typedef TYPE_1__ header_record;

/* Variables and functions */
scalar_t__ mbx;

void scan_value_length(header_record *h) {
  if (h->comment_len > 0 && h->value_len > mbx)
    mbx = h->value_len;
}