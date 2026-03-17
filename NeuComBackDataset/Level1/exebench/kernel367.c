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
struct TYPE_4__ {
  int compressionLevel;
};
struct TYPE_5__ {
  TYPE_1__ internal_donotuse;
};
typedef TYPE_2__ LZ4_streamHC_t;

/* Variables and functions */

void LZ4_setCompressionLevel(LZ4_streamHC_t *LZ4_streamHCPtr,
                             int compressionLevel) {
  if (compressionLevel < 1)
    compressionLevel = 9;
  if (compressionLevel > 12)
    compressionLevel = 12;
  LZ4_streamHCPtr->internal_donotuse.compressionLevel = compressionLevel;
}