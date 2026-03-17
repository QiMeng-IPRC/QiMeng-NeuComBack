#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct mdoc_node {
  int dummy;
};
struct mdoc_meta {
  int dummy;
};
struct html {
  int flags;
};

/* Variables and functions */

void mdoc_pf_post(const struct mdoc_meta *meta, const struct mdoc_node *n,
                  struct html *h) {

  h->flags |= (1 << 0);
}