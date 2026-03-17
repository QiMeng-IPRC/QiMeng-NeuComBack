#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int version; int length; int ID; scalar_t__ srandID; } ;
typedef  TYPE_1__ s_cmd_req_head ;
typedef  int /*<<< orphan*/  int32 ;

/* Variables and functions */
extern "C" { int32 package_cmd_req_construct(s_cmd_req_head *cmd_req_head, int cmd_req_head_ID, int length_xml, int srand_id);
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

void write_output(TYPE_1__* cmd_req_head, int cmd_req_head_ID, int length_xml, int srand_id, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *cmd_req_head;
  json output_temp_2;

  output_temp_2["version"] = output_temp_1.version;

  output_temp_2["length"] = output_temp_1.length;

  output_temp_2["ID"] = output_temp_1.ID;

  output_temp_2["srandID"] = output_temp_1.srandID;
  output_json["cmd_req_head"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int cmd_req_head_pointer__version = input_json["cmd_req_head"]["version"];
  int cmd_req_head_pointer__length = input_json["cmd_req_head"]["length"];
  int cmd_req_head_pointer__ID = input_json["cmd_req_head"]["ID"];
  long int cmd_req_head_pointer__srandID = input_json["cmd_req_head"]["srandID"];
  TYPE_1__ cmd_req_head_pointer = {cmd_req_head_pointer__version, cmd_req_head_pointer__length, cmd_req_head_pointer__ID, cmd_req_head_pointer__srandID};
  TYPE_1__* cmd_req_head = &cmd_req_head_pointer;
  int cmd_req_head_ID = input_json["cmd_req_head_ID"];
  int length_xml = input_json["length_xml"];
  int srand_id = input_json["srand_id"];
  clock_t begin = clock();
  int returnv = package_cmd_req_construct(cmd_req_head, cmd_req_head_ID, length_xml, srand_id);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cmd_req_head, cmd_req_head_ID, length_xml, srand_id, returnv);
}