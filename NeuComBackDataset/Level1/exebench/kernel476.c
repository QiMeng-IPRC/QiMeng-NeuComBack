#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct iax_session {
  int /*<<< orphan*/ sendto;
};
typedef int /*<<< orphan*/ sendto_t;

/* Variables and functions */

void iax_set_sendto(struct iax_session *s, sendto_t ptr) { s->sendto = ptr; }