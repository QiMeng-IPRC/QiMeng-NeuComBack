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
  int F;
  int D;
};
typedef TYPE_1__ Z80Context;

/* Variables and functions */

void Z80_BIT7D(Z80Context *ctx) {
  ctx->F = (ctx->F & 0x10) | 0x20 | ((ctx->D & 0x80) ? 0 : 0x80);
}