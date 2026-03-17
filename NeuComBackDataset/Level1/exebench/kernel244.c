#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int euint32;
struct TYPE_3__ {
  int FirstClusterHigh;
  int FirstClusterLow;
};
typedef TYPE_1__ FileRecord;

/* Variables and functions */

void fs_setFirstClusterInDirEntry(FileRecord *rec, euint32 cluster_addr) {
  rec->FirstClusterHigh = cluster_addr >> 16;
  rec->FirstClusterLow = cluster_addr & 0xFFFF;
}