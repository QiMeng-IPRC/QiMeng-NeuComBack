#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int u8 ;

/* Variables and functions */
extern  int* S0 ; 
extern  int* S1 ; 
extern  int* S2 ; 
extern  int* S3 ; 
extern  int* S4 ; 
extern  int* S5 ; 
extern  int* S6 ; 
extern  int* S7 ; 
extern "C" { void OneRound(u8 x[8], u8 k[4]);
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

void write_output(int* x, int* k) {
  json output_json;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 8; i12++) {
    int output_temp_13 = x[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_json["x"] = output_temp_11;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 4; i15++) {
    int output_temp_16 = k[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_json["k"] = output_temp_14;
  std::vector<json> output_temp_17;
  for (unsigned int i18 = 0; i18 < 32; i18++) {
    int output_temp_19 = S0[i18];

    output_temp_17.push_back(output_temp_19);
  }
  output_json["S0"] = output_temp_17;
  std::vector<json> output_temp_20;
  for (unsigned int i21 = 0; i21 < 32; i21++) {
    int output_temp_22 = S1[i21];

    output_temp_20.push_back(output_temp_22);
  }
  output_json["S1"] = output_temp_20;
  std::vector<json> output_temp_23;
  for (unsigned int i24 = 0; i24 < 32; i24++) {
    int output_temp_25 = S2[i24];

    output_temp_23.push_back(output_temp_25);
  }
  output_json["S2"] = output_temp_23;
  std::vector<json> output_temp_26;
  for (unsigned int i27 = 0; i27 < 32; i27++) {
    int output_temp_28 = S3[i27];

    output_temp_26.push_back(output_temp_28);
  }
  output_json["S3"] = output_temp_26;
  std::vector<json> output_temp_29;
  for (unsigned int i30 = 0; i30 < 32; i30++) {
    int output_temp_31 = S4[i30];

    output_temp_29.push_back(output_temp_31);
  }
  output_json["S4"] = output_temp_29;
  std::vector<json> output_temp_32;
  for (unsigned int i33 = 0; i33 < 32; i33++) {
    int output_temp_34 = S5[i33];

    output_temp_32.push_back(output_temp_34);
  }
  output_json["S5"] = output_temp_32;
  std::vector<json> output_temp_35;
  for (unsigned int i36 = 0; i36 < 32; i36++) {
    int output_temp_37 = S6[i36];

    output_temp_35.push_back(output_temp_37);
  }
  output_json["S6"] = output_temp_35;
  std::vector<json> output_temp_38;
  for (unsigned int i39 = 0; i39 < 32; i39++) {
    int output_temp_40 = S7[i39];

    output_temp_38.push_back(output_temp_40);
  }
  output_json["S7"] = output_temp_38;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["x"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* x = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["k"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* k = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["S0"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  S0 = &input_temp_3_vec[0];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["S1"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  S1 = &input_temp_4_vec[0];
  std::vector<int> input_temp_5_vec;
  for (auto& elem : input_json["S2"]) {
    int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  S2 = &input_temp_5_vec[0];
  std::vector<int> input_temp_6_vec;
  for (auto& elem : input_json["S3"]) {
    int input_temp_6_inner = elem;
    input_temp_6_vec.push_back(input_temp_6_inner);
  }
  S3 = &input_temp_6_vec[0];
  std::vector<int> input_temp_7_vec;
  for (auto& elem : input_json["S4"]) {
    int input_temp_7_inner = elem;
    input_temp_7_vec.push_back(input_temp_7_inner);
  }
  S4 = &input_temp_7_vec[0];
  std::vector<int> input_temp_8_vec;
  for (auto& elem : input_json["S5"]) {
    int input_temp_8_inner = elem;
    input_temp_8_vec.push_back(input_temp_8_inner);
  }
  S5 = &input_temp_8_vec[0];
  std::vector<int> input_temp_9_vec;
  for (auto& elem : input_json["S6"]) {
    int input_temp_9_inner = elem;
    input_temp_9_vec.push_back(input_temp_9_inner);
  }
  S6 = &input_temp_9_vec[0];
  std::vector<int> input_temp_10_vec;
  for (auto& elem : input_json["S7"]) {
    int input_temp_10_inner = elem;
    input_temp_10_vec.push_back(input_temp_10_inner);
  }
  S7 = &input_temp_10_vec[0];
  clock_t begin = clock();
  OneRound(x, k);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(x, k);
}