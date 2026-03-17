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
  int status;
  int phase;
  int packet_status;
  double callback;
};
typedef TYPE_1__ scsi_disk_t;

/* Variables and functions */

void scsi_disk_command_common(scsi_disk_t *dev) {
  dev->status = 0x80;
  dev->phase = 1;
  if (dev->packet_status == 0x06)
    dev->callback = 0.0;
  else
    dev->callback = -1.0;
}