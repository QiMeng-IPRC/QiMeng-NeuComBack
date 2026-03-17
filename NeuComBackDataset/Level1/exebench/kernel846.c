#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ u8;
struct btrfs_super_block {
  int /*<<< orphan*/ chunk_root_level;
};

/* Variables and functions */

void btrfs_set_super_chunk_root_level(struct btrfs_super_block *s, u8 val) {
  s->chunk_root_level = (val);
}