#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int /*<<< orphan*/ IPv6_buf;
int /*<<< orphan*/ IPv6_length;
scalar_t__ Sending_Packet_TAG;
int /*<<< orphan*/ Sending_buf;
int /*<<< orphan*/ Sending_length;
scalar_t__ Sending_sent_offset;

void init_frag() {

  Sending_buf = IPv6_buf;
  Sending_length = IPv6_length;
  Sending_Packet_TAG = 0;
  Sending_sent_offset = 0;
}