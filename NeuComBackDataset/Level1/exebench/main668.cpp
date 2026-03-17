#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int error_class; int error_code; scalar_t__ error_code_2; scalar_t__ error_code_1; scalar_t__ error_decode; } ;
typedef  TYPE_1__ DP_ERROR_T ;
typedef  int DPR_WORD ;
typedef  int DPR_DWORD ;
typedef  int /*<<< orphan*/  DPR_BYTE ;

/* Variables and functions */
extern "C" { DPR_DWORD dps_calc_io_data_len_syntax(DPR_WORD cfg_len, DPR_BYTE *cfg_data, DPR_WORD *in_data_len, DPR_WORD *out_data_len, DP_ERROR_T *error);
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

void write_output(int cfg_len, int* cfg_data, int* in_data_len, int* out_data_len, TYPE_1__* error, int returnv) {
  json output_json;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = cfg_data[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["cfg_data"] = output_temp_4;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = in_data_len[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["in_data_len"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    int output_temp_12 = out_data_len[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["out_data_len"] = output_temp_10;
  TYPE_1__ output_temp_13 = *error;
  json output_temp_14;

  output_temp_14["error_class"] = output_temp_13.error_class;

  output_temp_14["error_code"] = output_temp_13.error_code;

  output_temp_14["error_code_2"] = output_temp_13.error_code_2;

  output_temp_14["error_code_1"] = output_temp_13.error_code_1;

  output_temp_14["error_decode"] = output_temp_13.error_decode;
  output_json["error"] = output_temp_14;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int cfg_len = input_json["cfg_len"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["cfg_data"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* cfg_data = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["in_data_len"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* in_data_len = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["out_data_len"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  int* out_data_len = &input_temp_3_vec[0];
  int error_pointer__error_class = input_json["error"]["error_class"];
  int error_pointer__error_code = input_json["error"]["error_code"];
  long int error_pointer__error_code_2 = input_json["error"]["error_code_2"];
  long int error_pointer__error_code_1 = input_json["error"]["error_code_1"];
  long int error_pointer__error_decode = input_json["error"]["error_decode"];
  TYPE_1__ error_pointer = {error_pointer__error_class, error_pointer__error_code, error_pointer__error_code_2, error_pointer__error_code_1, error_pointer__error_decode};
  TYPE_1__* error = &error_pointer;
  clock_t begin = clock();
  int returnv = dps_calc_io_data_len_syntax(cfg_len, cfg_data, in_data_len, out_data_len, error);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(cfg_len, cfg_data, in_data_len, out_data_len, error, returnv);
}