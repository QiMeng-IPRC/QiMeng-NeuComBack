#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef scalar_t__ UInt64;
struct TYPE_3__ {
  scalar_t__ Size;
  size_t Data;
};
typedef int SRes;
typedef TYPE_1__ CSzData;

/* Variables and functions */

SRes SzSkeepDataSize(CSzData *sd, UInt64 size) {
  if (size > sd->Size)
    return 16;
  sd->Size -= (size_t)size;
  sd->Data += (size_t)size;
  return 0;
}