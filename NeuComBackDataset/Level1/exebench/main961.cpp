#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int Used; } ;
struct TYPE_4__ {int error_class; int error_code; scalar_t__ error_code_2; scalar_t__ error_code_1; scalar_t__ error_decode; } ;
typedef  TYPE_1__ DP_ERROR_T ;
typedef  unsigned int DPR_WORD ;
typedef  int DPR_DWORD ;

/* Variables and functions */
extern  TYPE_3__* DpUserIdTable ; 
extern "C" { DPR_DWORD dp_get_cref_syntax (DPR_WORD slv_add,DPR_DWORD *c_ref, DPR_DWORD user_handle,DP_ERROR_T *error);
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

void write_output(unsigned int slv_add, int* c_ref, int user_handle, TYPE_1__* error, int returnv) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    int output_temp_5 = c_ref[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["c_ref"] = output_temp_3;
  TYPE_1__ output_temp_6 = *error;
  json output_temp_7;

  output_temp_7["error_class"] = output_temp_6.error_class;

  output_temp_7["error_code"] = output_temp_6.error_code;

  output_temp_7["error_code_2"] = output_temp_6.error_code_2;

  output_temp_7["error_code_1"] = output_temp_6.error_code_1;

  output_temp_7["error_decode"] = output_temp_6.error_decode;
  output_json["error"] = output_temp_7;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    TYPE_3__ output_temp_10 = DpUserIdTable[i9];
    json output_temp_11;

    output_temp_11["Used"] = output_temp_10.Used;
    output_temp_8.push_back(output_temp_11);
  }
  output_json["DpUserIdTable"] = output_temp_8;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned int slv_add = input_json["slv_add"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["c_ref"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* c_ref = &input_temp_1_vec[0];
  int user_handle = input_json["user_handle"];
  int error_pointer__error_class = input_json["error"]["error_class"];
  int error_pointer__error_code = input_json["error"]["error_code"];
  long int error_pointer__error_code_2 = input_json["error"]["error_code_2"];
  long int error_pointer__error_code_1 = input_json["error"]["error_code_1"];
  long int error_pointer__error_decode = input_json["error"]["error_decode"];
  TYPE_1__ error_pointer = {error_pointer__error_class, error_pointer__error_code, error_pointer__error_code_2, error_pointer__error_code_1, error_pointer__error_decode};
  TYPE_1__* error = &error_pointer;
  std::vector<TYPE_3__> input_temp_2_vec;
  for (auto& elem : input_json["DpUserIdTable"]) {
    int input_temp_2_inner__Used = elem["Used"];
    TYPE_3__ input_temp_2_inner = {input_temp_2_inner__Used};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  DpUserIdTable = &input_temp_2_vec[0];
  clock_t begin = clock();
  int returnv = dp_get_cref_syntax(slv_add, c_ref, user_handle, error);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(slv_add, c_ref, user_handle, error, returnv);
}