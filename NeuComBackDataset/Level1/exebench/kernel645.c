#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct csvparse {
  char *parse_ptr;
  char *errmsg;
  int errmsg_len;
  scalar_t__ need_nextline;
};

/* Variables and functions */

void csvparse_init(struct csvparse *ctx, char *str, char *err, int len) {
  ctx->parse_ptr = str;
  ctx->need_nextline = 0;
  ctx->errmsg = err;
  ctx->errmsg_len = len;
}