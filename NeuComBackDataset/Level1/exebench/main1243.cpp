#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int addr; int nBits; } ;
typedef  TYPE_1__ Network ;
typedef  int Address ;

/* Variables and functions */
extern "C" { void netbroadcast(Network* netw, Address* broadcast);
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

void write_output(TYPE_1__* netw, int* broadcast) {
  json output_json;
  TYPE_1__ output_temp_2 = *netw;
  json output_temp_3;

  output_temp_3["addr"] = output_temp_2.addr;

  output_temp_3["nBits"] = output_temp_2.nBits;
  output_json["netw"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = broadcast[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["broadcast"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int netw_pointer__addr = input_json["netw"]["addr"];
  int netw_pointer__nBits = input_json["netw"]["nBits"];
  TYPE_1__ netw_pointer = {netw_pointer__addr, netw_pointer__nBits};
  TYPE_1__* netw = &netw_pointer;
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["broadcast"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* broadcast = &input_temp_1_vec[0];
  clock_t begin = clock();
  netbroadcast(netw, broadcast);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(netw, broadcast);
}