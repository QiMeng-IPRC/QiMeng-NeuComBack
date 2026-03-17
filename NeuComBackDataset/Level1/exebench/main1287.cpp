#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  enum States { ____Placeholder_States } States ;

/* Variables and functions */
extern  int END ; 
extern  int ENTRY ; 
extern  int SELECTTEST ; 
extern "C" { void changeState(int input, enum States *state);
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

void write_output(int input, int* state) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = state[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["state"] = output_temp_2;

  output_json["END"] = END;

  output_json["ENTRY"] = ENTRY;

  output_json["SELECTTEST"] = SELECTTEST;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int input = input_json["input"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["state"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* state = &input_temp_1_vec[0];
  END = input_json["END"];
  ENTRY = input_json["ENTRY"];
  SELECTTEST = input_json["SELECTTEST"];
  clock_t begin = clock();
  enum States(*casted_state) = (enum States(*))state;
  changeState(input, casted_state);
  state = (int(*))casted_state;
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(input, state);
}