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
  int flags;
  int type;
};
typedef TYPE_1__ Mem;

/* Variables and functions */

void _storeTypeInfo(Mem *pMem) {
  int flags = pMem->flags;
  if (flags & 0x0001) {
    pMem->type = 5;
  } else if (flags & 0x0004) {
    pMem->type = 1;
  } else if (flags & 0x0008) {
    pMem->type = 2;
  } else if (flags & 0x0002) {
    pMem->type = 3;
  } else {
    pMem->type = 4;
  }
}