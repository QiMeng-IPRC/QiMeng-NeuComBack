#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct can_bittiming_const {int tseg2_min; int tseg2_max; int tseg1_max; } ;

/* Variables and functions */
extern "C" { int can_update_spt(const struct can_bittiming_const *btc, int sampl_pt, int tseg, int *tseg1, int *tseg2);
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

void write_output(struct can_bittiming_const* btc, int sampl_pt, int tseg, int* tseg1, int* tseg2, int returnv) {
  json output_json;
  struct can_bittiming_const output_temp_3 = *btc;
  json output_temp_4;

  output_temp_4["tseg2_min"] = output_temp_3.tseg2_min;

  output_temp_4["tseg2_max"] = output_temp_3.tseg2_max;

  output_temp_4["tseg1_max"] = output_temp_3.tseg1_max;
  output_json["btc"] = output_temp_4;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    int output_temp_7 = tseg1[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["tseg1"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    int output_temp_10 = tseg2[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["tseg2"] = output_temp_8;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int btc_pointer__tseg2_min = input_json["btc"]["tseg2_min"];
  int btc_pointer__tseg2_max = input_json["btc"]["tseg2_max"];
  int btc_pointer__tseg1_max = input_json["btc"]["tseg1_max"];
  struct can_bittiming_const btc_pointer = {btc_pointer__tseg2_min, btc_pointer__tseg2_max, btc_pointer__tseg1_max};
  struct can_bittiming_const* btc = &btc_pointer;
  int sampl_pt = input_json["sampl_pt"];
  int tseg = input_json["tseg"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["tseg1"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* tseg1 = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["tseg2"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* tseg2 = &input_temp_2_vec[0];
  clock_t begin = clock();
  int returnv = can_update_spt(btc, sampl_pt, tseg, tseg1, tseg2);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(btc, sampl_pt, tseg, tseg1, tseg2, returnv);
}