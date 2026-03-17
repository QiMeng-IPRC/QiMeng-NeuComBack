#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ uint32;
struct TYPE_4__ {
  int /*<<< orphan*/ s_addr;
};
struct sockaddr_in {
  int /*<<< orphan*/ sin_port;
  TYPE_1__ sin_addr;
};
struct sockaddr {
  int dummy;
};
struct TYPE_5__ {
  int /*<<< orphan*/ port;
  int /*<<< orphan*/ ip;
  int /*<<< orphan*/ type;
};
typedef TYPE_2__ netadr_t;

/* Variables and functions */
int /*<<< orphan*/ NA_IP;

void SockadrToNetadr(struct sockaddr *s, netadr_t *a) {
  a->type = NA_IP;
  *(uint32 *)&a->ip = ((struct sockaddr_in *)s)->sin_addr.s_addr;
  a->port = ((struct sockaddr_in *)s)->sin_port;
}