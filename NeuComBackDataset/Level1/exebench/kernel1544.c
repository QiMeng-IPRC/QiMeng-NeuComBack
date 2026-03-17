#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct xfs_sb {
  int sb_versionnum;
  int sb_features2;
};

/* Variables and functions */

void xfs_sb_version_addprojid32bit(struct xfs_sb *sbp) {
  sbp->sb_versionnum |= 0x8000;
  sbp->sb_features2 |= 0x00000080;
}