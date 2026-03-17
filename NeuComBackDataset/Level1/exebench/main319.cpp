#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int last_valid_element; } ;
typedef  TYPE_1__ XArray ;

/* Variables and functions */
extern  int XARRAY_ENULLPOINTER ; 
extern  int XARRAY_SUCCESS ; 
extern "C" { int xarray_Count (XArray *xarray, unsigned int *out_count);
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

void write_output(TYPE_1__* xarray, unsigned int* out_count, int returnv) {
  json output_json;
  TYPE_1__ output_temp_2 = *xarray;
  json output_temp_3;

  output_temp_3["last_valid_element"] = output_temp_2.last_valid_element;
  output_json["xarray"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    unsigned int output_temp_6 = out_count[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["out_count"] = output_temp_4;

  output_json["XARRAY_ENULLPOINTER"] = XARRAY_ENULLPOINTER;

  output_json["XARRAY_SUCCESS"] = XARRAY_SUCCESS;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int xarray_pointer__last_valid_element = input_json["xarray"]["last_valid_element"];
  TYPE_1__ xarray_pointer = {xarray_pointer__last_valid_element};
  TYPE_1__* xarray = &xarray_pointer;
  std::vector<unsigned int> input_temp_1_vec;
  for (auto& elem : input_json["out_count"]) {
    unsigned int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  unsigned int* out_count = &input_temp_1_vec[0];
  XARRAY_ENULLPOINTER = input_json["XARRAY_ENULLPOINTER"];
  XARRAY_SUCCESS = input_json["XARRAY_SUCCESS"];
  clock_t begin = clock();
  int returnv = xarray_Count(xarray, out_count);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(xarray, out_count, returnv);
}