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
  unsigned int current_shell_id;
};
typedef TYPE_1__ rpacket_t;

/* Variables and functions */

void rpacket_set_current_shell_id(rpacket_t *packet,
                                  unsigned int current_shell_id) {
  packet->current_shell_id = current_shell_id;
}