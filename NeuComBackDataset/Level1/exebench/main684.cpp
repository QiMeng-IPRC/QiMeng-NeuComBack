#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int integer ;
typedef  int doublereal ;

/* Variables and functions */
extern "C" { int dlaqr1_(integer *n, doublereal *h__, integer *ldh, doublereal *sr1, doublereal *si1, doublereal *sr2, doublereal *si2, doublereal *v);
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

void write_output(int* n, int* h__, int* ldh, int* sr1, int* si1, int* sr2, int* si2, int* v, int returnv) {
  json output_json;
  std::vector<json> output_temp_9;
  for (unsigned int i10 = 0; i10 < 32; i10++) {
    int output_temp_11 = n[i10];

    output_temp_9.push_back(output_temp_11);
  }
  output_json["n"] = output_temp_9;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    int output_temp_14 = h__[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_json["h__"] = output_temp_12;
  std::vector<json> output_temp_15;
  for (unsigned int i16 = 0; i16 < 32; i16++) {
    int output_temp_17 = ldh[i16];

    output_temp_15.push_back(output_temp_17);
  }
  output_json["ldh"] = output_temp_15;
  std::vector<json> output_temp_18;
  for (unsigned int i19 = 0; i19 < 32; i19++) {
    int output_temp_20 = sr1[i19];

    output_temp_18.push_back(output_temp_20);
  }
  output_json["sr1"] = output_temp_18;
  std::vector<json> output_temp_21;
  for (unsigned int i22 = 0; i22 < 32; i22++) {
    int output_temp_23 = si1[i22];

    output_temp_21.push_back(output_temp_23);
  }
  output_json["si1"] = output_temp_21;
  std::vector<json> output_temp_24;
  for (unsigned int i25 = 0; i25 < 32; i25++) {
    int output_temp_26 = sr2[i25];

    output_temp_24.push_back(output_temp_26);
  }
  output_json["sr2"] = output_temp_24;
  std::vector<json> output_temp_27;
  for (unsigned int i28 = 0; i28 < 32; i28++) {
    int output_temp_29 = si2[i28];

    output_temp_27.push_back(output_temp_29);
  }
  output_json["si2"] = output_temp_27;
  std::vector<json> output_temp_30;
  for (unsigned int i31 = 0; i31 < 32; i31++) {
    int output_temp_32 = v[i31];

    output_temp_30.push_back(output_temp_32);
  }
  output_json["v"] = output_temp_30;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["n"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* n = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["h__"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* h__ = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["ldh"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  int* ldh = &input_temp_3_vec[0];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["sr1"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  int* sr1 = &input_temp_4_vec[0];
  std::vector<int> input_temp_5_vec;
  for (auto& elem : input_json["si1"]) {
    int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  int* si1 = &input_temp_5_vec[0];
  std::vector<int> input_temp_6_vec;
  for (auto& elem : input_json["sr2"]) {
    int input_temp_6_inner = elem;
    input_temp_6_vec.push_back(input_temp_6_inner);
  }
  int* sr2 = &input_temp_6_vec[0];
  std::vector<int> input_temp_7_vec;
  for (auto& elem : input_json["si2"]) {
    int input_temp_7_inner = elem;
    input_temp_7_vec.push_back(input_temp_7_inner);
  }
  int* si2 = &input_temp_7_vec[0];
  std::vector<int> input_temp_8_vec;
  for (auto& elem : input_json["v"]) {
    int input_temp_8_inner = elem;
    input_temp_8_vec.push_back(input_temp_8_inner);
  }
  int* v = &input_temp_8_vec[0];
  clock_t begin = clock();
  int returnv = dlaqr1_(n, h__, ldh, sr1, si1, sr2, si2, v);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(n, h__, ldh, sr1, si1, sr2, si2, v, returnv);
}