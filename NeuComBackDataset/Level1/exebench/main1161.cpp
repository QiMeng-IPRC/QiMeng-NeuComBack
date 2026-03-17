#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vpfe_config {int dummy; } ;
struct TYPE_3__ {struct vpfe_config* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
extern  TYPE_2__ vpfe_capture_dev ; 
extern "C" { void dm355_set_vpfe_config(struct vpfe_config *cfg);
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

void write_output(struct vpfe_config* cfg) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    struct vpfe_config output_temp_5 = cfg[i4];
    json output_temp_6;

    output_temp_6["dummy"] = output_temp_5.dummy;
    output_temp_3.push_back(output_temp_6);
  }
  output_json["cfg"] = output_temp_3;
  json output_temp_7;
  json output_temp_8;
  std::vector<json> output_temp_9;
  for (unsigned int i10 = 0; i10 < 32; i10++) {
    struct vpfe_config output_temp_11 = vpfe_capture_dev.dev.platform_data[i10];
    json output_temp_12;

    output_temp_12["dummy"] = output_temp_11.dummy;
    output_temp_9.push_back(output_temp_12);
  }
  output_temp_8["platform_data"] = output_temp_9;
  output_temp_7["dev"] = output_temp_8;
  output_json["vpfe_capture_dev"] = output_temp_7;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<struct vpfe_config> input_temp_1_vec;
  for (auto& elem : input_json["cfg"]) {
    int input_temp_1_inner__dummy = elem["dummy"];
    struct vpfe_config input_temp_1_inner = {input_temp_1_inner__dummy};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct vpfe_config* cfg = &input_temp_1_vec[0];
  std::vector<struct vpfe_config> input_temp_2_vec;
  for (auto& elem : input_json["vpfe_capture_dev"]["dev"]["platform_data"]) {
    int input_temp_2_inner__dummy = elem["dummy"];
    struct vpfe_config input_temp_2_inner = {input_temp_2_inner__dummy};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  struct vpfe_config* vpfe_capture_dev__dev__platform_data = &input_temp_2_vec[0];
  TYPE_1__ vpfe_capture_dev__dev = {vpfe_capture_dev__dev__platform_data};
  vpfe_capture_dev = {vpfe_capture_dev__dev};
  clock_t begin = clock();
  dm355_set_vpfe_config(cfg);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cfg);
}