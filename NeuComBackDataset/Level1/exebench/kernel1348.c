#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ netadrtype_t;
struct TYPE_4__ {
  int /*<<< orphan*/ type;
};
typedef TYPE_1__ netadr_t;

/* Variables and functions */
int /*<<< orphan*/
memset(TYPE_1__ *, int /*<<< orphan*/, int);

void NET_InitAddress(netadr_t *address, netadrtype_t type) {
  memset(address, 0, sizeof(*address));
  address->type = type;
}