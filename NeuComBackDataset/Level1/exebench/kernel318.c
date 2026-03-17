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
  unsigned int entry_point_;
};
typedef TYPE_1__ BytecodeHeader;

/* Variables and functions */

void bytecodeheader_set_entrypoint(BytecodeHeader *_ptr_bch,
                                   unsigned int _data) {
  _ptr_bch->entry_point_ = _data;
}