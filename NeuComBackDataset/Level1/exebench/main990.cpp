#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  scalar_t__ Atari800_MACHINE_5200 ; 
extern  scalar_t__ Atari800_machine_type ; 
extern  int /*<<< orphan*/ * GTIA_TRIG ; 
extern  scalar_t__ INPUT_joy_multijoy ; 
extern  int* PIA_PORT_input ; 
extern  int* STICK ; 
extern  int /*<<< orphan*/ * TRIG_input ; 
extern  int joy_multijoy_no ; 
extern "C" { void INPUT_SelectMultiJoy(int no);
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

void write_output(int no) {
  json output_json;

  output_json["Atari800_MACHINE_5200"] = Atari800_MACHINE_5200;

  output_json["Atari800_machine_type"] = Atari800_machine_type;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    int output_temp_7 = GTIA_TRIG[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["GTIA_TRIG"] = output_temp_5;

  output_json["INPUT_joy_multijoy"] = INPUT_joy_multijoy;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    int output_temp_10 = PIA_PORT_input[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["PIA_PORT_input"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    int output_temp_13 = STICK[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_json["STICK"] = output_temp_11;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 32; i15++) {
    int output_temp_16 = TRIG_input[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_json["TRIG_input"] = output_temp_14;

  output_json["joy_multijoy_no"] = joy_multijoy_no;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int no = input_json["no"];
  Atari800_MACHINE_5200 = input_json["Atari800_MACHINE_5200"];
  Atari800_machine_type = input_json["Atari800_machine_type"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["GTIA_TRIG"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  GTIA_TRIG = &input_temp_1_vec[0];
  INPUT_joy_multijoy = input_json["INPUT_joy_multijoy"];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["PIA_PORT_input"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  PIA_PORT_input = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["STICK"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  STICK = &input_temp_3_vec[0];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["TRIG_input"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  TRIG_input = &input_temp_4_vec[0];
  joy_multijoy_no = input_json["joy_multijoy_no"];
  clock_t begin = clock();
  INPUT_SelectMultiJoy(no);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(no);
}