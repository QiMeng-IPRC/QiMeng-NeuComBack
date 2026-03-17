#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct address {
  int number;
};

/* Variables and functions */

void set_number(struct address *adr, int number) {
  adr->number = number;
  (*adr).number = number;
}