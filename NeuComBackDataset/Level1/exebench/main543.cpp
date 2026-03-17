#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t_void ;
typedef  int t_u16 ;
typedef  int /*<<< orphan*/  pmlan_private ;
typedef  int /*<<< orphan*/  mlan_status ;
struct TYPE_7__ {int action; int antenna_mode; } ;
struct TYPE_5__ {TYPE_3__ antenna; } ;
struct TYPE_6__ {int command; int size; TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  HostCmd_DS_GEN ;
typedef  TYPE_2__ HostCmd_DS_COMMAND ;
typedef  TYPE_3__ HostCmd_DS_802_11_RF_ANTENNA ;

/* Variables and functions */
extern  int /*<<< orphan*/  MLAN_STATUS_SUCCESS ; 
extern "C" { mlan_status wlan_cmd_802_11_rf_antenna( pmlan_private pmpriv, HostCmd_DS_COMMAND * cmd, t_u16 cmd_action, t_void * pdata_buf);
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

void write_output(int pmpriv, TYPE_2__* cmd, int cmd_action, int* pdata_buf, int returnv) {
  json output_json;
  TYPE_2__ output_temp_2 = *cmd;
  json output_temp_3;

  output_temp_3["command"] = output_temp_2.command;

  output_temp_3["size"] = output_temp_2.size;
  json output_temp_4;
  json output_temp_5;

  output_temp_5["action"] = output_temp_2.params.antenna.action;

  output_temp_5["antenna_mode"] = output_temp_2.params.antenna.antenna_mode;
  output_temp_4["antenna"] = output_temp_5;
  output_temp_3["params"] = output_temp_4;
  output_json["cmd"] = output_temp_3;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    int output_temp_8 = pdata_buf[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["pdata_buf"] = output_temp_6;

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
  int cmd_pointer__params__antenna__action = input_json["cmd"]["params"]["antenna"]["action"];
  int cmd_pointer__params__antenna__antenna_mode = input_json["cmd"]["params"]["antenna"]["antenna_mode"];
  TYPE_3__ cmd_pointer__params__antenna = {cmd_pointer__params__antenna__action, cmd_pointer__params__antenna__antenna_mode};
  TYPE_1__ cmd_pointer__params = {cmd_pointer__params__antenna};
  TYPE_2__ cmd_pointer = {cmd_pointer__command, cmd_pointer__size, cmd_pointer__params};
  TYPE_2__* cmd = &cmd_pointer;
  int cmd_action = input_json["cmd_action"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["pdata_buf"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* pdata_buf = &input_temp_1_vec[0];
  MLAN_STATUS_SUCCESS = input_json["MLAN_STATUS_SUCCESS"];
  clock_t begin = clock();
  int returnv = wlan_cmd_802_11_rf_antenna(pmpriv, cmd, cmd_action, pdata_buf);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pmpriv, cmd, cmd_action, pdata_buf, returnv);
}