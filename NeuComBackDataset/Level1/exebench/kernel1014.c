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
struct pcap_stat {
  int dummy;
};
struct TYPE_4__ {
  struct pcap_stat stat;
};
struct TYPE_5__ {
  TYPE_1__ md;
};
typedef TYPE_2__ pcap_t;

/* Variables and functions */

int pcap_stats(pcap_t *p, struct pcap_stat *ps) {

  *ps = p->md.stat;
  return (0);
}