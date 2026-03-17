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
  int version;
  int length;
  int ID;
  scalar_t__ srandID;
};
typedef TYPE_1__ s_cmd_req_head;
typedef int /*<<< orphan*/ int32;

/* Variables and functions */

int32 package_cmd_req_construct(s_cmd_req_head *cmd_req_head,
                                int cmd_req_head_ID, int length_xml,
                                int srand_id) {

  cmd_req_head->version = 100;
  cmd_req_head->length = length_xml;
  cmd_req_head->ID = cmd_req_head_ID;
  cmd_req_head->srandID = 0;
# 60 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/88888yl/unix/refs/heads/master/ipc/vs_package.c"
  return 0;
}