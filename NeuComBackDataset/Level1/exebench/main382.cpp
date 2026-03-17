#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * abGpInvert; int /*<<< orphan*/ * abGpHost; int /*<<< orphan*/ * abGpMode; int /*<<< orphan*/ * abGpDdr; } ;
struct TYPE_4__ {TYPE_1__ sGpMode; } ;

/* Variables and functions */
extern  TYPE_2__ gsGlobalInfo ; 
extern "C" { void InitGpMode ( void );
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

void write_output() {
  json output_json;
  json output_temp_5;
  json output_temp_6;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = gsGlobalInfo.sGpMode.abGpInvert[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_temp_6["abGpInvert"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    int output_temp_12 = gsGlobalInfo.sGpMode.abGpHost[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_temp_6["abGpHost"] = output_temp_10;
  std::vector<json> output_temp_13;
  for (unsigned int i14 = 0; i14 < 32; i14++) {
    int output_temp_15 = gsGlobalInfo.sGpMode.abGpMode[i14];

    output_temp_13.push_back(output_temp_15);
  }
  output_temp_6["abGpMode"] = output_temp_13;
  std::vector<json> output_temp_16;
  for (unsigned int i17 = 0; i17 < 32; i17++) {
    int output_temp_18 = gsGlobalInfo.sGpMode.abGpDdr[i17];

    output_temp_16.push_back(output_temp_18);
  }
  output_temp_6["abGpDdr"] = output_temp_16;
  output_temp_5["sGpMode"] = output_temp_6;
  output_json["gsGlobalInfo"] = output_temp_5;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["gsGlobalInfo"]["sGpMode"]["abGpInvert"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* gsGlobalInfo__sGpMode__abGpInvert = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["gsGlobalInfo"]["sGpMode"]["abGpHost"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* gsGlobalInfo__sGpMode__abGpHost = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["gsGlobalInfo"]["sGpMode"]["abGpMode"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  int* gsGlobalInfo__sGpMode__abGpMode = &input_temp_3_vec[0];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["gsGlobalInfo"]["sGpMode"]["abGpDdr"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  int* gsGlobalInfo__sGpMode__abGpDdr = &input_temp_4_vec[0];
  TYPE_1__ gsGlobalInfo__sGpMode = {gsGlobalInfo__sGpMode__abGpInvert, gsGlobalInfo__sGpMode__abGpHost, gsGlobalInfo__sGpMode__abGpMode, gsGlobalInfo__sGpMode__abGpDdr};
  gsGlobalInfo = {gsGlobalInfo__sGpMode};
  clock_t begin = clock();
  InitGpMode();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}