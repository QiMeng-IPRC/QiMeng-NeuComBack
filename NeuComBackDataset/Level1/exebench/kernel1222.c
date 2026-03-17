#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct quota_handle {
  int qh_io_flags;
};

/* Variables and functions */

void mark_quotafile_info_dirty(struct quota_handle *h) {
  h->qh_io_flags |= 0x02;
}