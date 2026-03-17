#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ u8;
struct TYPE_2__ {
  int /*<<< orphan*/ simon_bytecount;
};

/* Variables and functions */
TYPE_1__ *simondataptr;

void simon_hardware_blocksetindex(u8 l_index) {
  simondataptr->simon_bytecount = l_index;
}