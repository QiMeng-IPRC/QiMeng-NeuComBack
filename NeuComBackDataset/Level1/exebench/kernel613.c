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
  int labelOffset;
  int length;
  int offset;
};
typedef TYPE_1__ RCOTextIndex;

/* Variables and functions */

void es_rcoTextIndex(RCOTextIndex *i) {
  i->labelOffset =
      (sizeof(i->labelOffset) == 2
           ? (((i->labelOffset) & 0xFF) << 8 | ((i->labelOffset) & 0xFF00) >> 8)
           : (((i->labelOffset) & 0xFF) << 24 |
              ((i->labelOffset) & 0xFF00) << 8 |
              ((i->labelOffset) & 0xFF0000) >> 8 |
              ((i->labelOffset) & 0xFF000000) >> 24));
  i->length = (sizeof(i->length) == 2
                   ? (((i->length) & 0xFF) << 8 | ((i->length) & 0xFF00) >> 8)
                   : (((i->length) & 0xFF) << 24 | ((i->length) & 0xFF00) << 8 |
                      ((i->length) & 0xFF0000) >> 8 |
                      ((i->length) & 0xFF000000) >> 24));
  i->offset = (sizeof(i->offset) == 2
                   ? (((i->offset) & 0xFF) << 8 | ((i->offset) & 0xFF00) >> 8)
                   : (((i->offset) & 0xFF) << 24 | ((i->offset) & 0xFF00) << 8 |
                      ((i->offset) & 0xFF0000) >> 8 |
                      ((i->offset) & 0xFF000000) >> 24));
}