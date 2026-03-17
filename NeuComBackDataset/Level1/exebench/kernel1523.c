#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ symbol_type;
struct TYPE_3__ {
  unsigned int value;
  int /*<<< orphan*/ type;
};
typedef TYPE_1__ Token;

/* Variables and functions */

void update_token(Token *t, unsigned int c, symbol_type type) {
  t->type = type;
  t->value = c;
  return;
}