#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_7__ TYPE_3__;
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ t_void;
typedef int t_u16;
typedef int /*<<< orphan*/ pmlan_private;
typedef int /*<<< orphan*/ mlan_status;
struct TYPE_7__ {
  int action;
  int antenna_mode;
};
struct TYPE_5__ {
  TYPE_3__ antenna;
};
struct TYPE_6__ {
  int command;
  int size;
  TYPE_1__ params;
};
typedef int /*<<< orphan*/ HostCmd_DS_GEN;
typedef TYPE_2__ HostCmd_DS_COMMAND;
typedef TYPE_3__ HostCmd_DS_802_11_RF_ANTENNA;

/* Variables and functions */
int /*<<< orphan*/ MLAN_STATUS_SUCCESS;

mlan_status wlan_cmd_802_11_rf_antenna(pmlan_private pmpriv,
                                       HostCmd_DS_COMMAND *cmd,
                                       t_u16 cmd_action, t_void *pdata_buf) {
  HostCmd_DS_802_11_RF_ANTENNA *pantenna = &cmd->params.antenna;

  do {
    do {
    } while (0);
  } while (0);
  cmd->command = 0x0020;
  cmd->size = sizeof(HostCmd_DS_802_11_RF_ANTENNA) + sizeof(HostCmd_DS_GEN);

  if (cmd_action == 0x0001) {
    pantenna->action = 0x0003;
    pantenna->antenna_mode = *(t_u16 *)pdata_buf;
  } else {
    pantenna->action = 0x000c;
  }
  do {
    do {
    } while (0);
  } while (0);
  return MLAN_STATUS_SUCCESS;
}