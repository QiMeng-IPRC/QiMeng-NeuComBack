#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ rtransfer_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  curtransfersize ; 
extern  TYPE_1__* gfree ; 
extern "C" { void rtransfer_put(rtransfer_t *rtt);
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

void write_output(TYPE_1__* rtt) {
  json output_json;
  TYPE_1__ output_temp_2 = *rtt;
  json output_temp_3;

  output_temp_3["flags"] = output_temp_2.flags;
  output_json["rtt"] = output_temp_3;

  output_json["curtransfersize"] = curtransfersize;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    TYPE_1__ output_temp_6 = gfree[i5];
    json output_temp_7;

    output_temp_7["flags"] = output_temp_6.flags;
    output_temp_4.push_back(output_temp_7);
  }
  output_json["gfree"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int rtt_pointer__flags = input_json["rtt"]["flags"];
  TYPE_1__ rtt_pointer = {rtt_pointer__flags};
  TYPE_1__* rtt = &rtt_pointer;
  curtransfersize = input_json["curtransfersize"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["gfree"]) {
    int input_temp_1_inner__flags = elem["flags"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__flags};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  gfree = &input_temp_1_vec[0];
  clock_t begin = clock();
  rtransfer_put(rtt);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rtt);
}