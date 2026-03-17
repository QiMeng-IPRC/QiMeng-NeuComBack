#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ PFN_CAP_CALLBACK ;
typedef  int /*<<< orphan*/  INT32 ;
typedef  scalar_t__ E_CAP_INT_TYPE ;

/* Variables and functions */
extern  int /*<<< orphan*/  E_CAP_INVALID_INT ; 
extern  scalar_t__ eCAP_ADDRMINTF ; 
extern  scalar_t__ eCAP_MDINTF ; 
extern  scalar_t__ eCAP_MEINTF ; 
extern  scalar_t__ eCAP_VINTF ; 
extern  scalar_t__* pfnCAP_IntHandlerTable ; 
extern "C" { INT32 CAP_InstallCallback(E_CAP_INT_TYPE eIntType, PFN_CAP_CALLBACK pfnCallback, PFN_CAP_CALLBACK *pfnOldCallback);
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

void write_output(long int eIntType, long int pfnCallback, long int* pfnOldCallback, int returnv) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    long int output_temp_5 = pfnOldCallback[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["pfnOldCallback"] = output_temp_3;

  output_json["E_CAP_INVALID_INT"] = E_CAP_INVALID_INT;

  output_json["eCAP_ADDRMINTF"] = eCAP_ADDRMINTF;

  output_json["eCAP_MDINTF"] = eCAP_MDINTF;

  output_json["eCAP_MEINTF"] = eCAP_MEINTF;

  output_json["eCAP_VINTF"] = eCAP_VINTF;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    long int output_temp_8 = pfnCAP_IntHandlerTable[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["pfnCAP_IntHandlerTable"] = output_temp_6;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int eIntType = input_json["eIntType"];
  long int pfnCallback = input_json["pfnCallback"];
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["pfnOldCallback"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* pfnOldCallback = &input_temp_1_vec[0];
  E_CAP_INVALID_INT = input_json["E_CAP_INVALID_INT"];
  eCAP_ADDRMINTF = input_json["eCAP_ADDRMINTF"];
  eCAP_MDINTF = input_json["eCAP_MDINTF"];
  eCAP_MEINTF = input_json["eCAP_MEINTF"];
  eCAP_VINTF = input_json["eCAP_VINTF"];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["pfnCAP_IntHandlerTable"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  pfnCAP_IntHandlerTable = &input_temp_2_vec[0];
  clock_t begin = clock();
  int returnv = CAP_InstallCallback(eIntType, pfnCallback, pfnOldCallback);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(eIntType, pfnCallback, pfnOldCallback, returnv);
}