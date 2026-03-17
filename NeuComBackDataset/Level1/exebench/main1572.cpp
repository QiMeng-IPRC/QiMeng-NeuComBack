#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  scalar_t__ P2_AUDV ; 
extern  scalar_t__* P2_Bottom ; 
extern  scalar_t__* P2_Counters ; 
extern  scalar_t__* P2_Enable ; 
extern  scalar_t__* P2_Flags ; 
extern  scalar_t__* P2_Music_Bottom ; 
extern  scalar_t__* P2_Music_Count ; 
extern  scalar_t__* P2_Music_Top ; 
extern  scalar_t__ P2_Rbyte ; 
extern  scalar_t__* P2_Top ; 
extern  int P2_sreg ; 
extern  scalar_t__ Pitfall2 ; 
extern "C" { void Init_P2(void);
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

  output_json["P2_AUDV"] = P2_AUDV;
  std::vector<json> output_temp_9;
  for (unsigned int i10 = 0; i10 < 32; i10++) {
    long int output_temp_11 = P2_Bottom[i10];

    output_temp_9.push_back(output_temp_11);
  }
  output_json["P2_Bottom"] = output_temp_9;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    long int output_temp_14 = P2_Counters[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_json["P2_Counters"] = output_temp_12;
  std::vector<json> output_temp_15;
  for (unsigned int i16 = 0; i16 < 32; i16++) {
    long int output_temp_17 = P2_Enable[i16];

    output_temp_15.push_back(output_temp_17);
  }
  output_json["P2_Enable"] = output_temp_15;
  std::vector<json> output_temp_18;
  for (unsigned int i19 = 0; i19 < 32; i19++) {
    long int output_temp_20 = P2_Flags[i19];

    output_temp_18.push_back(output_temp_20);
  }
  output_json["P2_Flags"] = output_temp_18;
  std::vector<json> output_temp_21;
  for (unsigned int i22 = 0; i22 < 32; i22++) {
    long int output_temp_23 = P2_Music_Bottom[i22];

    output_temp_21.push_back(output_temp_23);
  }
  output_json["P2_Music_Bottom"] = output_temp_21;
  std::vector<json> output_temp_24;
  for (unsigned int i25 = 0; i25 < 32; i25++) {
    long int output_temp_26 = P2_Music_Count[i25];

    output_temp_24.push_back(output_temp_26);
  }
  output_json["P2_Music_Count"] = output_temp_24;
  std::vector<json> output_temp_27;
  for (unsigned int i28 = 0; i28 < 32; i28++) {
    long int output_temp_29 = P2_Music_Top[i28];

    output_temp_27.push_back(output_temp_29);
  }
  output_json["P2_Music_Top"] = output_temp_27;

  output_json["P2_Rbyte"] = P2_Rbyte;
  std::vector<json> output_temp_30;
  for (unsigned int i31 = 0; i31 < 32; i31++) {
    long int output_temp_32 = P2_Top[i31];

    output_temp_30.push_back(output_temp_32);
  }
  output_json["P2_Top"] = output_temp_30;

  output_json["P2_sreg"] = P2_sreg;

  output_json["Pitfall2"] = Pitfall2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  P2_AUDV = input_json["P2_AUDV"];
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["P2_Bottom"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  P2_Bottom = &input_temp_1_vec[0];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["P2_Counters"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  P2_Counters = &input_temp_2_vec[0];
  std::vector<long int> input_temp_3_vec;
  for (auto& elem : input_json["P2_Enable"]) {
    long int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  P2_Enable = &input_temp_3_vec[0];
  std::vector<long int> input_temp_4_vec;
  for (auto& elem : input_json["P2_Flags"]) {
    long int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  P2_Flags = &input_temp_4_vec[0];
  std::vector<long int> input_temp_5_vec;
  for (auto& elem : input_json["P2_Music_Bottom"]) {
    long int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  P2_Music_Bottom = &input_temp_5_vec[0];
  std::vector<long int> input_temp_6_vec;
  for (auto& elem : input_json["P2_Music_Count"]) {
    long int input_temp_6_inner = elem;
    input_temp_6_vec.push_back(input_temp_6_inner);
  }
  P2_Music_Count = &input_temp_6_vec[0];
  std::vector<long int> input_temp_7_vec;
  for (auto& elem : input_json["P2_Music_Top"]) {
    long int input_temp_7_inner = elem;
    input_temp_7_vec.push_back(input_temp_7_inner);
  }
  P2_Music_Top = &input_temp_7_vec[0];
  P2_Rbyte = input_json["P2_Rbyte"];
  std::vector<long int> input_temp_8_vec;
  for (auto& elem : input_json["P2_Top"]) {
    long int input_temp_8_inner = elem;
    input_temp_8_vec.push_back(input_temp_8_inner);
  }
  P2_Top = &input_temp_8_vec[0];
  P2_sreg = input_json["P2_sreg"];
  Pitfall2 = input_json["Pitfall2"];
  clock_t begin = clock();
  Init_P2();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}