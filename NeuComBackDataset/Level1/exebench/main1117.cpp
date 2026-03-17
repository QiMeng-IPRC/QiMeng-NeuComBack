#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  resample_row_hv_2_kernel; int /*<<< orphan*/  YCbCr_to_RGB_kernel; int /*<<< orphan*/  idct_block_kernel; } ;
typedef  TYPE_1__ stbi__jpeg ;

/* Variables and functions */
extern  int /*<<< orphan*/  stbi__YCbCr_to_RGB_row ; 
extern  int /*<<< orphan*/  stbi__idct_block ; 
extern  int /*<<< orphan*/  stbi__resample_row_hv_2 ; 
extern "C" { void stbi__setup_jpeg(stbi__jpeg *j);
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

void write_output(TYPE_1__* j) {
  json output_json;
  TYPE_1__ output_temp_1 = *j;
  json output_temp_2;

  output_temp_2["resample_row_hv_2_kernel"] = output_temp_1.resample_row_hv_2_kernel;

  output_temp_2["YCbCr_to_RGB_kernel"] = output_temp_1.YCbCr_to_RGB_kernel;

  output_temp_2["idct_block_kernel"] = output_temp_1.idct_block_kernel;
  output_json["j"] = output_temp_2;

  output_json["stbi__YCbCr_to_RGB_row"] = stbi__YCbCr_to_RGB_row;

  output_json["stbi__idct_block"] = stbi__idct_block;

  output_json["stbi__resample_row_hv_2"] = stbi__resample_row_hv_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int j_pointer__resample_row_hv_2_kernel = input_json["j"]["resample_row_hv_2_kernel"];
  int j_pointer__YCbCr_to_RGB_kernel = input_json["j"]["YCbCr_to_RGB_kernel"];
  int j_pointer__idct_block_kernel = input_json["j"]["idct_block_kernel"];
  TYPE_1__ j_pointer = {j_pointer__resample_row_hv_2_kernel, j_pointer__YCbCr_to_RGB_kernel, j_pointer__idct_block_kernel};
  TYPE_1__* j = &j_pointer;
  stbi__YCbCr_to_RGB_row = input_json["stbi__YCbCr_to_RGB_row"];
  stbi__idct_block = input_json["stbi__idct_block"];
  stbi__resample_row_hv_2 = input_json["stbi__resample_row_hv_2"];
  clock_t begin = clock();
  stbi__setup_jpeg(j);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(j);
}