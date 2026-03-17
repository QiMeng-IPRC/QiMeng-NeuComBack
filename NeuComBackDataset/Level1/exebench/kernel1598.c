#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct ty_sb {
  int len;
  int gap;
  int buf;
};

/* Variables and functions */

void ty_sb_lskip(struct ty_sb *sb, int len) {
  sb->len -= len;
  sb->gap += len;
  sb->buf += len;
}