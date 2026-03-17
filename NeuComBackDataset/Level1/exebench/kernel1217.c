#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int /*<<< orphan*/ u64;
struct apei_exec_context {
  int /*<<< orphan*/ value;
};

/* Variables and functions */

void apei_exec_ctx_set_input(struct apei_exec_context *ctx, u64 input) {
  ctx->value = input;
}