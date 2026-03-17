#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  flist ;
struct TYPE_4__ {int /*<<< orphan*/ * f; } ;
typedef  TYPE_1__ dir ;

/* Variables and functions */
extern "C" { dir save(dir *d, flist *name);
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

void write_output(TYPE_1__* d, int* name, TYPE_1__ returnv) {
  json output_json;
  TYPE_1__ output_temp_3 = *d;
  json output_temp_4;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    int output_temp_7 = output_temp_3.f[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_temp_4["f"] = output_temp_5;
  output_json["d"] = output_temp_4;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    int output_temp_10 = name[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["name"] = output_temp_8;
  json output_temp_11;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    int output_temp_14 = returnv.f[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_temp_11["f"] = output_temp_12;
  output_json["returnv"] = output_temp_11;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["d"]["f"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* d_pointer__f = &input_temp_1_vec[0];
  TYPE_1__ d_pointer = {d_pointer__f};
  TYPE_1__* d = &d_pointer;
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["name"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* name = &input_temp_2_vec[0];
  clock_t begin = clock();
  TYPE_1__ returnv = save(d, name);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(d, name, returnv);
}