#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ f32;
struct TYPE_2__ {
  int /*<<< orphan*/ F32;
};

/* Variables and functions */
TYPE_1__ *wgPipe;

void GX_TexCoord1f32(f32 s) { wgPipe->F32 = s; }