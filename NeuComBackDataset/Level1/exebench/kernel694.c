#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_9__ TYPE_4__;
typedef struct TYPE_8__ TYPE_3__;
typedef struct TYPE_7__ TYPE_2__;
typedef struct TYPE_6__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ t_void;
typedef int /*<<< orphan*/ t_u16;
typedef int /*<<< orphan*/ mlan_status;
struct TYPE_7__ {
  int /*<<< orphan*/ value;
  int /*<<< orphan*/ addr;
};
typedef TYPE_2__ mlan_ds_mem_rw;
struct TYPE_6__ {
  int /*<<< orphan*/ mem;
};
struct TYPE_9__ {
  int command;
  int size;
  TYPE_1__ params;
};
struct TYPE_8__ {
  int /*<<< orphan*/ value;
  int /*<<< orphan*/ addr;
  int /*<<< orphan*/ action;
};
typedef TYPE_3__ HostCmd_DS_MEM_ACCESS;
typedef int /*<<< orphan*/ HostCmd_DS_GEN;
typedef TYPE_4__ HostCmd_DS_COMMAND;

/* Variables and functions */
int /*<<< orphan*/ MLAN_STATUS_SUCCESS;

mlan_status wlan_cmd_mem_access(HostCmd_DS_COMMAND *cmd, t_u16 cmd_action,
                                t_void *pdata_buf) {
  mlan_ds_mem_rw *mem_rw = (mlan_ds_mem_rw *)pdata_buf;
  HostCmd_DS_MEM_ACCESS *mem_access = (HostCmd_DS_MEM_ACCESS *)&cmd->params.mem;

  do {
    do {
    } while (0);
  } while (0);

  cmd->command = 0x0086;
  cmd->size = sizeof(HostCmd_DS_MEM_ACCESS) + sizeof(HostCmd_DS_GEN);

  mem_access->action = cmd_action;
  mem_access->addr = mem_rw->addr;
  mem_access->value = mem_rw->value;

  do {
    do {
    } while (0);
  } while (0);
  return MLAN_STATUS_SUCCESS;
}