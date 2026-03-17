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
typedef void *t_u8;
typedef int t_u16;
typedef int /*<<< orphan*/ pmlan_private;
typedef int /*<<< orphan*/ mlan_status;
struct TYPE_7__ {
  scalar_t__ tx_buf_cnt;
  scalar_t__ tx_pause;
};
typedef TYPE_2__ mlan_ds_misc_tx_datapause;
struct TYPE_9__ {
  int action;
  void *pause_tx_count;
  void *enable_tx_pause;
};
struct TYPE_6__ {
  int /*<<< orphan*/ tx_data_pause;
};
struct TYPE_8__ {
  int command;
  int size;
  TYPE_1__ params;
};
typedef int /*<<< orphan*/ HostCmd_DS_GEN;
typedef TYPE_3__ HostCmd_DS_COMMAND;
typedef TYPE_4__ HostCmd_DS_CMD_TX_DATA_PAUSE;

/* Variables and functions */
int /*<<< orphan*/ MLAN_STATUS_SUCCESS;

mlan_status wlan_uap_cmd_txdatapause(pmlan_private pmpriv,
                                     HostCmd_DS_COMMAND *cmd, t_u16 cmd_action,
                                     t_void *pdata_buf) {
  HostCmd_DS_CMD_TX_DATA_PAUSE *pause_cmd =
      (HostCmd_DS_CMD_TX_DATA_PAUSE *)&cmd->params.tx_data_pause;
  mlan_ds_misc_tx_datapause *data_pause =
      (mlan_ds_misc_tx_datapause *)pdata_buf;

  do {
  } while (0);

  cmd->command = 0x0103;
  cmd->size = sizeof(HostCmd_DS_CMD_TX_DATA_PAUSE) + sizeof(HostCmd_DS_GEN);
  pause_cmd->action = cmd_action;

  if (cmd_action == 0x0001) {
    pause_cmd->enable_tx_pause = (t_u8)data_pause->tx_pause;
    pause_cmd->pause_tx_count = (t_u8)data_pause->tx_buf_cnt;
  }

  do {
  } while (0);
  return MLAN_STATUS_SUCCESS;
}