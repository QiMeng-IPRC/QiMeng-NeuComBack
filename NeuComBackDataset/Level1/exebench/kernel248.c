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
  int flag;
  scalar_t__ srandID;
};
typedef TYPE_1__ s_cmd_res_head;
typedef int /*<<< orphan*/ int32;

/* Variables and functions */

int32 package_cmd_res_construct_1(s_cmd_res_head *cmd_res_head,
                                  int cmd_res_head_ID, int length_xml,
                                  int suc_flag) {
  cmd_res_head->version = 100;
  cmd_res_head->length = length_xml;
  cmd_res_head->ID = cmd_res_head_ID;
  cmd_res_head->srandID = 0;
  cmd_res_head->flag = suc_flag;

  return 0;
}