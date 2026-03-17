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
  int data_length;
  char *data;
  int /*<<< orphan*/ opcode;
  int /*<<< orphan*/ type;
};
typedef TYPE_1__ datagram_t;

/* Variables and functions */
int /*<<< orphan*/ Command;
int /*<<< orphan*/ GAP_TerminateLinkRequest;

int get_GAP_TerminateLinkRequest(datagram_t *datagram, long connHandle) {
  datagram->type = Command;
  datagram->opcode = GAP_TerminateLinkRequest;
  datagram->data_length = 2;

  datagram->data[0] = (char)connHandle;
  datagram->data[1] = (char)(connHandle >> 8);
  return 0;
}