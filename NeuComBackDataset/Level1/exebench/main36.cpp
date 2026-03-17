#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ op_code; scalar_t__ trans_id; int /*<<< orphan*/  status; int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {scalar_t__ trans_id; TYPE_2__ sr_cmd; } ;
typedef  TYPE_1__ tGATT_TCB ;
typedef  TYPE_2__ tGATT_SR_CMD ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT32 ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
extern  scalar_t__ GATT_CMD_WRITE ; 
extern  scalar_t__ GATT_HANDLE_VALUE_CONF ; 
extern  int /*<<< orphan*/  GATT_NOT_FOUND ; 
extern  scalar_t__ GATT_REQ_MTU ; 
extern  scalar_t__ GATT_SIGN_CMD_WRITE ; 
extern  scalar_t__ GATT_TRANS_ID_MAX ; 
extern "C" { UINT32 gatt_sr_enqueue_cmd (tGATT_TCB *p_tcb, UINT8 op_code, UINT16 handle);
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

void write_output(TYPE_1__* p_tcb, long int op_code, int handle, long int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *p_tcb;
  json output_temp_2;

  output_temp_2["trans_id"] = output_temp_1.trans_id;
  json output_temp_3;

  output_temp_3["op_code"] = output_temp_1.sr_cmd.op_code;

  output_temp_3["trans_id"] = output_temp_1.sr_cmd.trans_id;

  output_temp_3["status"] = output_temp_1.sr_cmd.status;

  output_temp_3["handle"] = output_temp_1.sr_cmd.handle;
  output_temp_2["sr_cmd"] = output_temp_3;
  output_json["p_tcb"] = output_temp_2;

  output_json["GATT_CMD_WRITE"] = GATT_CMD_WRITE;

  output_json["GATT_HANDLE_VALUE_CONF"] = GATT_HANDLE_VALUE_CONF;

  output_json["GATT_NOT_FOUND"] = GATT_NOT_FOUND;

  output_json["GATT_REQ_MTU"] = GATT_REQ_MTU;

  output_json["GATT_SIGN_CMD_WRITE"] = GATT_SIGN_CMD_WRITE;

  output_json["GATT_TRANS_ID_MAX"] = GATT_TRANS_ID_MAX;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int p_tcb_pointer__trans_id = input_json["p_tcb"]["trans_id"];
  long int p_tcb_pointer__sr_cmd__op_code = input_json["p_tcb"]["sr_cmd"]["op_code"];
  long int p_tcb_pointer__sr_cmd__trans_id = input_json["p_tcb"]["sr_cmd"]["trans_id"];
  int p_tcb_pointer__sr_cmd__status = input_json["p_tcb"]["sr_cmd"]["status"];
  int p_tcb_pointer__sr_cmd__handle = input_json["p_tcb"]["sr_cmd"]["handle"];
  TYPE_2__ p_tcb_pointer__sr_cmd = {p_tcb_pointer__sr_cmd__op_code, p_tcb_pointer__sr_cmd__trans_id, p_tcb_pointer__sr_cmd__status, p_tcb_pointer__sr_cmd__handle};
  TYPE_1__ p_tcb_pointer = {p_tcb_pointer__trans_id, p_tcb_pointer__sr_cmd};
  TYPE_1__* p_tcb = &p_tcb_pointer;
  long int op_code = input_json["op_code"];
  int handle = input_json["handle"];
  GATT_CMD_WRITE = input_json["GATT_CMD_WRITE"];
  GATT_HANDLE_VALUE_CONF = input_json["GATT_HANDLE_VALUE_CONF"];
  GATT_NOT_FOUND = input_json["GATT_NOT_FOUND"];
  GATT_REQ_MTU = input_json["GATT_REQ_MTU"];
  GATT_SIGN_CMD_WRITE = input_json["GATT_SIGN_CMD_WRITE"];
  GATT_TRANS_ID_MAX = input_json["GATT_TRANS_ID_MAX"];
  clock_t begin = clock();
  long int returnv = gatt_sr_enqueue_cmd(p_tcb, op_code, handle);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p_tcb, op_code, handle, returnv);
}