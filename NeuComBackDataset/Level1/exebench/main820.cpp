#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t_void ;
typedef  void* t_u8 ;
typedef  int t_u16 ;
typedef  int /*<<< orphan*/  pmlan_private ;
typedef  int /*<<< orphan*/  mlan_status ;
struct TYPE_7__ {scalar_t__ tx_buf_cnt; scalar_t__ tx_pause; } ;
typedef  TYPE_2__ mlan_ds_misc_tx_datapause ;
struct TYPE_9__ {int action; void* pause_tx_count; void* enable_tx_pause; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_data_pause; } ;
struct TYPE_8__ {int command; int size; TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  HostCmd_DS_GEN ;
typedef  TYPE_3__ HostCmd_DS_COMMAND ;
typedef  TYPE_4__ HostCmd_DS_CMD_TX_DATA_PAUSE ;

/* Variables and functions */
extern  int /*<<< orphan*/  MLAN_STATUS_SUCCESS ; 
extern "C" { mlan_status wlan_uap_cmd_txdatapause(pmlan_private pmpriv, HostCmd_DS_COMMAND * cmd, t_u16 cmd_action, t_void * pdata_buf);
 }

#include <vector>
#include <nlohmann/json.hpp>
#include <fstream>
#include <iomanip>
#include <clib/synthesizer.h>
#include <time.h>
#include <math.h>
#include <iostream>
char* output_file;
char* pre_accel_dump_file;  // optional dump file.
using json = nlohmann::json;
const char* __asan_default_options() {
  return "detect_leaks=0";
}

clock_t AcceleratorStart;
clock_t AcceleratorTotalNanos = 0;
void StartAcceleratorTimer() {
  AcceleratorStart = clock();
}

void StopAcceleratorTimer() {
  AcceleratorTotalNanos += (clock()) - AcceleratorStart;
}

void write_output(int pmpriv, TYPE_3__* cmd, int cmd_action, int* pdata_buf, int returnv) {
  json output_json;
  TYPE_3__ output_temp_2 = *cmd;
  json output_temp_3;

  output_temp_3["command"] = output_temp_2.command;

  output_temp_3["size"] = output_temp_2.size;
  json output_temp_4;

  output_temp_4["tx_data_pause"] = output_temp_2.params.tx_data_pause;
  output_temp_3["params"] = output_temp_4;
  output_json["cmd"] = output_temp_3;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    int output_temp_7 = pdata_buf[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["pdata_buf"] = output_temp_5;

  output_json["MLAN_STATUS_SUCCESS"] = MLAN_STATUS_SUCCESS;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pmpriv = input_json["pmpriv"];
  int cmd_pointer__command = input_json["cmd"]["command"];
  int cmd_pointer__size = input_json["cmd"]["size"];
  int cmd_pointer__params__tx_data_pause = input_json["cmd"]["params"]["tx_data_pause"];
  TYPE_1__ cmd_pointer__params = {cmd_pointer__params__tx_data_pause};
  TYPE_3__ cmd_pointer = {cmd_pointer__command, cmd_pointer__size, cmd_pointer__params};
  TYPE_3__* cmd = &cmd_pointer;
  int cmd_action = input_json["cmd_action"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["pdata_buf"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* pdata_buf = &input_temp_1_vec[0];
  MLAN_STATUS_SUCCESS = input_json["MLAN_STATUS_SUCCESS"];
  clock_t begin = clock();
  int returnv = wlan_uap_cmd_txdatapause(pmpriv, cmd, cmd_action, pdata_buf);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pmpriv, cmd, cmd_action, pdata_buf, returnv);
}