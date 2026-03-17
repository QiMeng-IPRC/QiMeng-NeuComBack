#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  TYPE_1__ *aFile;
};
struct TYPE_3__ {
  int sz;
  scalar_t__ nRef;
  scalar_t__ a;
  scalar_t__ zFilename;
};

/* Variables and functions */
TYPE_2__ g;

void formatVfs(void) {
  int i;
  for (i = 0; i < 10; i++) {
    g.aFile[i].sz = -1;
    g.aFile[i].zFilename = 0;
    g.aFile[i].a = 0;
    g.aFile[i].nRef = 0;
  }
}