#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {float kp; } ;
struct TYPE_5__ {TYPE_1__ pid; } ;
typedef  TYPE_2__ RegPIDOnf ;

/* Variables and functions */
extern "C" { void regpidonf_setKp(RegPIDOnf *item, float value);
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

void write_output(TYPE_2__* item, float value) {
  json output_json;
  TYPE_2__ output_temp_1 = *item;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["kp"] = output_temp_1.pid.kp;
  output_temp_2["pid"] = output_temp_3;
  output_json["item"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float item_pointer__pid__kp = input_json["item"]["pid"]["kp"];
  TYPE_1__ item_pointer__pid = {item_pointer__pid__kp};
  TYPE_2__ item_pointer = {item_pointer__pid};
  TYPE_2__* item = &item_pointer;
  float value = input_json["value"];
  clock_t begin = clock();
  regpidonf_setKp(item, value);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(item, value);
}