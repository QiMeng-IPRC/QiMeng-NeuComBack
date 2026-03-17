#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct sip_msg {
  int /*<<< orphan*/ len;
  int /*<<< orphan*/ buf;
};
struct TYPE_4__ {
  int /*<<< orphan*/ len;
  int /*<<< orphan*/ s;
};
typedef TYPE_1__ str;

/* Variables and functions */

int xl_get_msg_buf(struct sip_msg *msg, str *res, str *hp, int hi) {
  if (msg == NULL || res == NULL)
    return -1;

  res->s = msg->buf;
  res->len = msg->len;

  return 0;
}