#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* memory; size_t sp; int ip; int dbyte1; int dbyte2; } ;

/* Variables and functions */
extern  TYPE_1__ cpu0 ; 
extern "C" { void instruc_5();
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
  json output_temp_2;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    int output_temp_5 = cpu0.memory[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_temp_2["memory"] = output_temp_3;

  output_temp_2["sp"] = cpu0.sp;

  output_temp_2["ip"] = cpu0.ip;

  output_temp_2["dbyte1"] = cpu0.dbyte1;

  output_temp_2["dbyte2"] = cpu0.dbyte2;
  output_json["cpu0"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["cpu0"]["memory"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* cpu0__memory = &input_temp_1_vec[0];
  unsigned long int cpu0__sp = input_json["cpu0"]["sp"];
  int cpu0__ip = input_json["cpu0"]["ip"];
  int cpu0__dbyte1 = input_json["cpu0"]["dbyte1"];
  int cpu0__dbyte2 = input_json["cpu0"]["dbyte2"];
  cpu0 = {cpu0__memory, cpu0__sp, cpu0__ip, cpu0__dbyte1, cpu0__dbyte2};
  clock_t begin = clock();
  instruc_5();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}