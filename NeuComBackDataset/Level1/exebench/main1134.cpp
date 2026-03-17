#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ stride ;
typedef  scalar_t__ rs ;
typedef  scalar_t__ csr ;
typedef  scalar_t__ csi ;
typedef  scalar_t__ INT ;
typedef  float E ;

/* Variables and functions */
extern  scalar_t__ fftwf_an_INT_guaranteed_to_be_zero ; 
extern "C" { void r2cfII_2(float *R0, float *R1, float *Cr, float *Ci, stride rs, stride csr, stride csi, INT v, INT ivs, INT ovs);
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

void write_output(float* R0, float* R1, float* Cr, float* Ci, long int rs, long int csr, long int csi, long int v, long int ivs, long int ovs) {
  json output_json;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    float output_temp_7 = R0[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["R0"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    float output_temp_10 = R1[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["R1"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    float output_temp_13 = Cr[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_json["Cr"] = output_temp_11;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 32; i15++) {
    float output_temp_16 = Ci[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_json["Ci"] = output_temp_14;

  output_json["fftwf_an_INT_guaranteed_to_be_zero"] = fftwf_an_INT_guaranteed_to_be_zero;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<float> input_temp_1_vec;
  for (auto& elem : input_json["R0"]) {
    float input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  float* R0 = &input_temp_1_vec[0];
  std::vector<float> input_temp_2_vec;
  for (auto& elem : input_json["R1"]) {
    float input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  float* R1 = &input_temp_2_vec[0];
  std::vector<float> input_temp_3_vec;
  for (auto& elem : input_json["Cr"]) {
    float input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  float* Cr = &input_temp_3_vec[0];
  std::vector<float> input_temp_4_vec;
  for (auto& elem : input_json["Ci"]) {
    float input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  float* Ci = &input_temp_4_vec[0];
  long int rs = input_json["rs"];
  long int csr = input_json["csr"];
  long int csi = input_json["csi"];
  long int v = input_json["v"];
  long int ivs = input_json["ivs"];
  long int ovs = input_json["ovs"];
  fftwf_an_INT_guaranteed_to_be_zero = input_json["fftwf_an_INT_guaranteed_to_be_zero"];
  clock_t begin = clock();
  r2cfII_2(R0, R1, Cr, Ci, rs, csr, csi, v, ivs, ovs);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(R0, R1, Cr, Ci, rs, csr, csi, v, ivs, ovs);
}