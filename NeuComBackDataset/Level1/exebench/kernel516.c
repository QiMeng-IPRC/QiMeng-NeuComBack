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
  int /*<<< orphan*/ sql_state;
};
typedef TYPE_1__ SQL_SOCK_NODE;

/* Variables and functions */
int /*<<< orphan*/ DB_DISCONN;

void check_sql_sock_normal(SQL_SOCK_NODE *n) { n->sql_state = DB_DISCONN; }