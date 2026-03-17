#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  unsigned int sgl_floating_point ;
typedef  int result ;
typedef  scalar_t__ opnd3 ;
typedef  scalar_t__ opnd2 ;
typedef  scalar_t__ opnd1 ;
typedef  int dest_exponent ;
typedef  scalar_t__ boolean ;

/* Variables and functions */
extern "C" { int sgl_fmpy( sgl_floating_point *srcptr1, sgl_floating_point *srcptr2, sgl_floating_point *dstptr, unsigned int *status);
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

void write_output(unsigned int* srcptr1, unsigned int* srcptr2, unsigned int* dstptr, unsigned int* status, int returnv) {
  json output_json;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    unsigned int output_temp_7 = srcptr1[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["srcptr1"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    unsigned int output_temp_10 = srcptr2[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["srcptr2"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    unsigned int output_temp_13 = dstptr[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_json["dstptr"] = output_temp_11;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 32; i15++) {
    unsigned int output_temp_16 = status[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_json["status"] = output_temp_14;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<unsigned int> input_temp_1_vec;
  for (auto& elem : input_json["srcptr1"]) {
    unsigned int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  unsigned int* srcptr1 = &input_temp_1_vec[0];
  std::vector<unsigned int> input_temp_2_vec;
  for (auto& elem : input_json["srcptr2"]) {
    unsigned int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  unsigned int* srcptr2 = &input_temp_2_vec[0];
  std::vector<unsigned int> input_temp_3_vec;
  for (auto& elem : input_json["dstptr"]) {
    unsigned int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  unsigned int* dstptr = &input_temp_3_vec[0];
  std::vector<unsigned int> input_temp_4_vec;
  for (auto& elem : input_json["status"]) {
    unsigned int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  unsigned int* status = &input_temp_4_vec[0];
  clock_t begin = clock();
  int returnv = sgl_fmpy(srcptr1, srcptr2, dstptr, status);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(srcptr1, srcptr2, dstptr, status, returnv);
}