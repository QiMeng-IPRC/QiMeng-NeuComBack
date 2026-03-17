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
typedef int /*<<< orphan*/ usb_status_enum;
typedef scalar_t__ usb_core_id_enum;
struct TYPE_4__ {
  unsigned int core_speed;
  unsigned int max_packet_size;
  unsigned int host_channel_num;
  unsigned int dev_endp_num;
  unsigned int max_fifo_size;
  unsigned int phy_interface;
  scalar_t__ core_id;
};
struct TYPE_5__ {
  TYPE_1__ cfg;
};
typedef TYPE_2__ usb_core_handle_struct;

/* Variables and functions */
scalar_t__ USB_FS_CORE_ID;
int /*<<< orphan*/ USB_OK;

usb_status_enum usb_core_select(usb_core_handle_struct *pudev,
                                usb_core_id_enum core_id) {

  pudev->cfg.core_speed = 1U;
  pudev->cfg.max_packet_size = 64U;

  if (USB_FS_CORE_ID == core_id) {

    pudev->cfg.core_id = USB_FS_CORE_ID;

    pudev->cfg.host_channel_num = 8U;

    pudev->cfg.dev_endp_num = 4U;

    pudev->cfg.max_fifo_size = 320U;

    pudev->cfg.phy_interface = 2U;
# 179 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/prefetchnta/crhack/refs/heads/master/src/naked/arm-gd32/gd32f3x0/usbfs/usb_core.c"
  }

  return USB_OK;
}